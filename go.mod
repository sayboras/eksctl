// Make sure to run the following commands after changes to this file are made:
// ` make -f Makefile.docker update-build-image-tag && make -f Makefile.docker push-build-image`
module github.com/weaveworks/eksctl

go 1.13

require (
	github.com/MakeNowJust/heredoc v0.0.0-20171113091838-e9091a26100e // indirect
	github.com/alecthomas/jsonschema v0.0.0-20190530235721-fd8d96416671
	github.com/aws/aws-sdk-go v1.25.14-0.20191218135223-757eeed07291
	github.com/awslabs/goformation v0.0.0-20190320125420-ac0a17860cf1
	github.com/awslabs/goformation/v4 v4.1.0
	github.com/bazelbuild/bazel-gazelle v0.19.1-0.20191105222053-70208cbdc798 // indirect
	github.com/bazelbuild/buildtools v0.0.0-20190917191645-69366ca98f89 // indirect
	github.com/blang/semver v3.5.1+incompatible
	github.com/bxcodec/faker v2.0.1+incompatible
	github.com/christopherhein/go-version v0.0.0-20180807222509-fee8dd1f7c24
	github.com/cloudflare/cfssl v0.0.0-20190726000631-633726f6bcb7
	github.com/coredns/coredns v0.0.0-20170910182647-1b60688dc8f7 // indirect
	github.com/coreos/bbolt v1.3.3 // indirect
	github.com/coreos/go-systemd v0.0.0-20190620071333-e64a0ec8b42a // indirect
	github.com/dave/jennifer v1.3.0
	github.com/dlespiau/kube-test-harness v0.0.0-20190930170435-ec3f93e1a754
	github.com/evanphx/json-patch v4.2.0+incompatible
	github.com/fluxcd/flux/pkg/install v0.0.0-20200206191601-8b676b003ab0 // flux 1.18.0
	github.com/fluxcd/helm-operator/pkg/install v0.0.0-20200126164214-63f9ace7bf06 // helm-operator 1.0.0-rc8
	github.com/go-ini/ini v1.37.0 // indirect
	github.com/gobuffalo/envy v1.7.0 // indirect
	github.com/gobwas/glob v0.2.3
	github.com/gofrs/flock v0.7.1 // indirect
	github.com/gohugoio/hugo v0.55.6
	github.com/golangci/golangci-lint v1.21.0
	github.com/goreleaser/goreleaser v0.110.0
	github.com/gostaticanalysis/analysisutil v0.0.3 // indirect
	github.com/instrumenta/kubeval v0.0.0-20190918223246-8d013ec9fc56
	github.com/json-iterator/go v1.1.9 // indirect
	github.com/justinbarrick/go-k8s-portforward v1.0.3
	github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51
	github.com/kevinburke/go-bindata v3.15.0+incompatible
	github.com/kr/fs v0.1.0 // indirect
	github.com/kris-nova/logger v0.0.0-20181127235838-fd0d87064b06
	github.com/kris-nova/lolgopher v0.0.0-20180124180951-14d43f83481a // indirect
	github.com/kubernetes-sigs/aws-iam-authenticator v0.4.0
	github.com/kubicorn/kubicorn v0.0.0-20180829191017-06f6bce92acc
	github.com/lithammer/dedent v1.1.0
	github.com/magiconair/properties v1.8.1 // indirect
	github.com/mattn/go-isatty v0.0.9 // indirect
	github.com/mattn/go-zglob v0.0.1 // indirect
	github.com/miekg/coredns v0.0.0-20170910182647-1b60688dc8f7 // indirect
	github.com/miekg/dns v1.1.4 // indirect
	github.com/onsi/ginkgo v1.10.1
	github.com/onsi/gomega v1.7.0
	github.com/pelletier/go-toml v1.4.0 // indirect
	github.com/pkg/errors v0.8.1
	github.com/pkg/sftp v1.8.3 // indirect
	github.com/riywo/loginshell v0.0.0-20190610082906-2ed199a032f6
	github.com/sanathkr/yaml v1.0.0 // indirect
	github.com/spf13/afero v1.2.2
	github.com/spf13/cobra v0.0.5
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.4.0
	github.com/stretchr/testify v1.4.0
	github.com/tidwall/gjson v1.1.3
	github.com/tidwall/match v1.0.0 // indirect
	github.com/tidwall/sjson v1.0.2
	github.com/vektra/mockery v0.0.0-20181123154057-e78b021dcbb5
	github.com/voxelbrain/goptions v0.0.0-20180630082107-58cddc247ea2 // indirect
	github.com/weaveworks/github-release v0.6.2
	github.com/weaveworks/launcher v0.0.0-20180711153254-f1b2830d4f2d
	github.com/whilp/git-urls v0.0.0-20160530060445-31bac0d230fa
	golang.org/x/tools v0.0.0-20200121210457-b3205ff6fffe
	gopkg.in/gcfg.v1 v1.2.3 // indirect
	gopkg.in/ini.v1 v1.42.0 // indirect
	k8s.io/api v0.17.3
	k8s.io/apiextensions-apiserver v0.0.0
	k8s.io/apimachinery v0.17.3
	k8s.io/cli-runtime v0.17.3
	k8s.io/client-go v11.0.0+incompatible
	k8s.io/cloud-provider v0.17.3
	k8s.io/code-generator v0.17.3
	k8s.io/kops v1.15.2
	k8s.io/kubelet v0.0.0
	k8s.io/legacy-cloud-providers v0.0.0
	sigs.k8s.io/yaml v1.1.0
)

replace (
	// Override since git.apache.org is down.  The docs say to fetch from github.
	git.apache.org/thrift.git => github.com/apache/thrift v0.0.0-20180902110319-2566ecd5d999
	github.com/Azure/go-autorest => github.com/Azure/go-autorest v13.0.0+incompatible
	github.com/Azure/go-autorest/autorest => github.com/Azure/go-autorest/autorest v0.9.0
	github.com/Azure/go-autorest/autorest/adal => github.com/Azure/go-autorest/autorest/adal v0.5.0
	// Needed due to to Sirupsen/sirupsen case clash
	github.com/Sirupsen/logrus => github.com/sirupsen/logrus v1.4.2
	github.com/aws/aws-sdk-go => github.com/weaveworks/aws-sdk-go v1.25.14-0.20191218135223-757eeed07291
	github.com/awslabs/goformation => github.com/errordeveloper/goformation v0.0.0-20190507151947-a31eae35e596
	// Override version since auto-detected one fails with GOPROXY
	github.com/census-instrumentation/opencensus-proto => github.com/census-instrumentation/opencensus-proto v0.2.0
	// go mod appears to pick wrong version of github.com/docker/distribution automatically, which breaks k8s.io/kubernetes@v1.12.6
	github.com/docker/distribution => github.com/docker/distribution v0.0.0-20190619192407-5223c27422cc
	github.com/json-iterator/go => github.com/json-iterator/go v1.1.9
	// https://github.com/kubernetes/code-generator/blob/732c9ca86353b432e0cd118b64a941cadff73357/go.mod#L23-L28
	golang.org/x/crypto => golang.org/x/crypto v0.0.0-20181025213731-e84da0312774
	golang.org/x/sync => golang.org/x/sync v0.0.0-20181108010431-42b317875d0f
	golang.org/x/sys => golang.org/x/sys v0.0.0-20190209173611-3b5209105503
	golang.org/x/text => golang.org/x/text v0.3.1-0.20181227161524-e6919f6577db
	// Used to pin the k8s library versions regardless of what other dependencies enforce
	k8s.io/api => k8s.io/api v0.17.3
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.17.3
	k8s.io/apimachinery => k8s.io/apimachinery v0.17.3
	k8s.io/apiserver => k8s.io/apiserver v0.17.3
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.17.3
	k8s.io/client-go => k8s.io/client-go v0.17.3
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.17.3
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.17.3
	k8s.io/code-generator => k8s.io/code-generator v0.17.3
	k8s.io/component-base => k8s.io/component-base v0.17.3
	k8s.io/cri-api => k8s.io/cri-api v0.17.3
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.17.3
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.17.3
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.17.3
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.17.3
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.17.3
	k8s.io/kubectl => k8s.io/kubectl v0.17.3
	k8s.io/kubelet => k8s.io/kubelet v0.17.3
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.17.3
	k8s.io/metrics => k8s.io/metrics v0.17.3
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.17.3
)
