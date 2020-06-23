package defaultaddons

import (
	"fmt"
	"strings"

	"github.com/pkg/errors"
	"github.com/weaveworks/eksctl/pkg/logger"

	"github.com/weaveworks/eksctl/pkg/printers"

	apierrs "k8s.io/apimachinery/pkg/api/errors"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/client-go/kubernetes"
)

const (
	// KubeProxy is the name of the kube-proxy addon
	KubeProxy = "kube-proxy"
)

// UpdateKubeProxyImageTag updates image tag for kube-system:damoneset/kube-proxy based to match controlPlaneVersion
func UpdateKubeProxyImageTag(clientSet kubernetes.Interface, controlPlaneVersion string, plan bool) (bool, error) {
	printer := printers.NewJSONPrinter()

	d, err := clientSet.AppsV1().DaemonSets(metav1.NamespaceSystem).Get(KubeProxy, metav1.GetOptions{})
	if err != nil {
		if apierrs.IsNotFound(err) {
			logger.Warnf("%q was not found", KubeProxy)
			return false, nil
		}
		return false, errors.Wrapf(err, "getting %q", KubeProxy)
	}
	if numContainers := len(d.Spec.Template.Spec.Containers); !(numContainers >= 1) {
		return false, fmt.Errorf("%s has %d containers, expected at least 1", KubeProxy, numContainers)
	}

	if err := printer.LogObj(KubeProxy+" [current] = \\\n%s\n", d); err != nil {
		return false, err
	}

	image := &d.Spec.Template.Spec.Containers[0].Image
	imageParts := strings.Split(*image, ":")

	if len(imageParts) != 2 {
		return false, fmt.Errorf("unexpected image format %q for %q", *image, KubeProxy)
	}

	desiredTag := "v" + controlPlaneVersion

	if imageParts[1] == desiredTag {
		logger.Debug("imageParts = %v, desiredTag = %s", imageParts, desiredTag)
		logger.Infof("%q is already up-to-date", KubeProxy)
		return false, nil
	}

	if plan {
		logger.Fatalf("(plan) %q is not up-to-date", KubeProxy)
		return true, nil
	}

	imageParts[1] = desiredTag
	*image = strings.Join(imageParts, ":")

	if err := printer.LogObj(KubeProxy+" [updated] = \\\n%s\n", d); err != nil {
		return false, err
	}
	if _, err := clientSet.AppsV1().DaemonSets(metav1.NamespaceSystem).Update(d); err != nil {
		return false, err
	}

	logger.Infof("%q is now up-to-date", KubeProxy)
	return false, nil
}
