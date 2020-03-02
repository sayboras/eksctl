// Make sure to run the following commands after changes to this file are made:
// ` make -f Makefile.docker update-build-image-tag && make -f Makefile.docker push-build-image`
module github.com/weaveworks/eksctl

go 1.13

require (
	github.com/GoogleCloudPlatform/k8s-cloud-provider v0.0.0-20200211215230-68dc713166c5 // indirect
	github.com/MakeNowJust/heredoc v0.0.0-20171113091838-e9091a26100e // indirect
	github.com/alecthomas/jsonschema v0.0.0-20190530235721-fd8d96416671
	github.com/aws/aws-sdk-go v1.25.14-0.20191218135223-757eeed07291
	github.com/awslabs/goformation v0.0.0-20190320125420-ac0a17860cf1
	github.com/awslabs/goformation/v4 v4.1.0
	github.com/blang/semver v3.5.1+incompatible
	github.com/bxcodec/faker v2.0.1+incompatible
	github.com/christopherhein/go-version v0.0.0-20180807222509-fee8dd1f7c24
	github.com/cloudflare/cfssl v0.0.0-20190726000631-633726f6bcb7
	github.com/coredns/coredns v0.0.0-20170910182647-1b60688dc8f7 // indirect
	github.com/coreos/bbolt v1.3.3 // indirect
	github.com/coreos/etcd v3.3.18+incompatible // indirect
	github.com/coreos/go-semver v0.3.0 // indirect
	github.com/coreos/go-systemd v0.0.0-20191104093116-d3cd4ed1dbcf // indirect
	github.com/dave/jennifer v1.3.0
	github.com/dlespiau/kube-test-harness v0.0.0-20190110151726-c51c87635b61
	github.com/evanphx/json-patch v4.5.0+incompatible
	github.com/fluxcd/flux/pkg/install v0.0.0-20200206191601-8b676b003ab0 // flux 1.18.0
	github.com/fluxcd/helm-operator/pkg/install v0.0.0-20200213151218-f7e487142b46 // helm-operator 1.0.0-rc9
	github.com/go-ini/ini v1.37.0 // indirect
	github.com/gobuffalo/envy v1.7.0 // indirect
	github.com/gobwas/glob v0.2.3
	github.com/gofrs/flock v0.7.1 // indirect
	github.com/gogo/protobuf v1.3.1 // indirect
	github.com/gohugoio/hugo v0.55.6
	github.com/golang/groupcache v0.0.0-20200121045136-8c9f03a8e57e // indirect
	github.com/golang/protobuf v1.3.4 // indirect
	github.com/golangci/golangci-lint v1.21.0
	github.com/google/certificate-transparency-go v1.0.21 // indirect
	github.com/google/gofuzz v1.1.0 // indirect
	github.com/google/uuid v1.1.1 // indirect
	github.com/goreleaser/goreleaser v0.110.0
	github.com/grpc-ecosystem/go-grpc-middleware v1.0.1-0.20190118093823-f849b5445de4 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.9.5 // indirect
	github.com/hashicorp/golang-lru v0.5.4 // indirect
	github.com/imdario/mergo v0.3.8 // indirect
	github.com/instrumenta/kubeval v0.0.0-20190918223246-8d013ec9fc56
	github.com/justinbarrick/go-k8s-portforward v1.0.4-0.20190722134107-d79fe1b9d79d
	github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51
	github.com/kevinburke/go-bindata v3.15.0+incompatible
	github.com/konsorten/go-windows-terminal-sequences v1.0.2 // indirect
	github.com/kr/fs v0.1.0 // indirect
	github.com/kris-nova/logger v0.0.0-20181127235838-fd0d87064b06
	github.com/kris-nova/lolgopher v0.0.0-20180124180951-14d43f83481a // indirect
	github.com/kubernetes-sigs/aws-iam-authenticator v0.4.0
	github.com/kubicorn/kubicorn v0.0.0-20180829191017-06f6bce92acc
	github.com/lithammer/dedent v1.1.0
	github.com/magiconair/properties v1.8.1 // indirect
	github.com/mattn/go-zglob v0.0.1 // indirect
	github.com/miekg/coredns v0.0.0-20170910182647-1b60688dc8f7 // indirect
	github.com/onsi/ginkgo v1.10.1
	github.com/onsi/gomega v1.7.0
	github.com/pelletier/go-toml v1.4.0 // indirect
	github.com/pkg/errors v0.9.1
	github.com/pkg/sftp v1.8.3 // indirect
	github.com/prometheus/client_golang v1.4.1 // indirect
	github.com/prometheus/procfs v0.0.10 // indirect
	github.com/riywo/loginshell v0.0.0-20190610082906-2ed199a032f6
	github.com/sanathkr/yaml v1.0.0 // indirect
	github.com/spf13/afero v1.2.2
	github.com/spf13/cobra v0.0.6
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.4.0
	github.com/spotinst/spotinst-sdk-go v0.0.0-20181012192533-fed4677dbf8f // indirect
	github.com/stretchr/testify v1.4.0
	github.com/tidwall/gjson v1.1.3
	github.com/tidwall/match v1.0.0 // indirect
	github.com/tidwall/sjson v1.0.2
	github.com/vektra/mockery v0.0.0-20181123154057-e78b021dcbb5
	github.com/vmware/govmomi v0.19.0 // indirect
	github.com/voxelbrain/goptions v0.0.0-20180630082107-58cddc247ea2 // indirect
	github.com/weaveworks/github-release v0.6.3-0.20161024133933-73deea6af1e8
	github.com/weaveworks/launcher v0.0.0-20180711153254-f1b2830d4f2d
	github.com/whilp/git-urls v0.0.0-20160530060445-31bac0d230fa
	go.etcd.io/bbolt v1.3.3 // indirect
	go.uber.org/multierr v1.5.0 // indirect
	go.uber.org/zap v1.14.0 // indirect
	golang.org/x/crypto v0.0.0-20200221231518-2aa609cf4a9d // indirect
	golang.org/x/lint v0.0.0-20200130185559-910be7a94367 // indirect
	golang.org/x/net v0.0.0-20200301022130-244492dfa37a // indirect
	golang.org/x/oauth2 v0.0.0-20200107190931-bf48bf16ab8d // indirect
	golang.org/x/sys v0.0.0-20200301204400-5d559ad92b82 // indirect
	golang.org/x/time v0.0.0-20191024005414-555d28b269f0 // indirect
	golang.org/x/tools v0.0.0-20200301222351-066e0c02454c
	google.golang.org/genproto v0.0.0-20200228133532-8c2c7df3a383 // indirect
	google.golang.org/grpc v1.27.1 // indirect
	gopkg.in/gcfg.v1 v1.2.3 // indirect
	gopkg.in/ini.v1 v1.42.0 // indirect
	// kube v1.14.10 dependencies
	k8s.io/api v0.17.3
	k8s.io/apiextensions-apiserver v0.0.0-20191212015246-8fe0c124fb40
	k8s.io/apimachinery v0.17.3
	k8s.io/apiserver v0.17.3 // indirect
	k8s.io/cli-runtime v0.0.0-20191212015340-98374817910c
	k8s.io/client-go v11.0.1-0.20191029005444-8e4128053008+incompatible
	k8s.io/cloud-provider v0.17.3
	k8s.io/code-generator v0.0.0-20190831074504-732c9ca86353
	k8s.io/csi-translation-lib v0.0.0-20191212015623-92af21758231 // indirect
	k8s.io/kops v1.4.2-0.20191108032336-b7c25f9a98ab
	k8s.io/kube-openapi v0.0.0-20200204173128-addea2498afe // indirect
	k8s.io/kubelet v0.0.0-20190313123811-3556bcde9670
	k8s.io/kubernetes v1.14.10
	k8s.io/utils v0.0.0-20200229041039-0a110f9eb7ab // indirect
	sigs.k8s.io/kustomize v2.0.3+incompatible // indirect
	sigs.k8s.io/yaml v1.2.0
)

replace (
	// Override since git.apache.org is down.  The docs say to fetch from github.
	git.apache.org/thrift.git => github.com/apache/thrift v0.0.0-20180902110319-2566ecd5d999
	github.com/Azure/go-autorest => github.com/Azure/go-autorest v11.1.0+incompatible
	// Needed due to to Sirupsen/sirupsen case clash
	github.com/Sirupsen/logrus => github.com/sirupsen/logrus v1.4.2
	github.com/aws/aws-sdk-go => github.com/weaveworks/aws-sdk-go v1.25.14-0.20191218135223-757eeed07291
	github.com/awslabs/goformation => github.com/errordeveloper/goformation v0.0.0-20190507151947-a31eae35e596
	// Override version since auto-detected one fails with GOPROXY
	github.com/census-instrumentation/opencensus-proto => github.com/census-instrumentation/opencensus-proto v0.2.0
	// go mod appears to pick wrong version of github.com/docker/distribution automatically, which breaks k8s.io/kubernetes@v1.12.6
	github.com/docker/distribution => github.com/docker/distribution v0.0.0-20190619192407-5223c27422cc
	// https://github.com/kubernetes/code-generator/blob/732c9ca86353b432e0cd118b64a941cadff73357/go.mod#L23-L28
	golang.org/x/crypto => golang.org/x/crypto v0.0.0-20181025213731-e84da0312774
	golang.org/x/sync => golang.org/x/sync v0.0.0-20181108010431-42b317875d0f
	golang.org/x/sys => golang.org/x/sys v0.0.0-20190209173611-3b5209105503
	golang.org/x/text => golang.org/x/text v0.3.1-0.20181227161524-e6919f6577db
	// Used to pin the k8s library versions regardless of what other dependencies enforce
	k8s.io/api => k8s.io/api v0.0.0-20191004102349-159aefb8556b
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.0.0-20191212015246-8fe0c124fb40
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20191004074956-c5d2f014d689
	k8s.io/apiserver => k8s.io/apiserver v0.0.0-20191212015046-43d571094e6f
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.0.0-20191212015340-98374817910c
	k8s.io/client-go => k8s.io/client-go v11.0.1-0.20191029005444-8e4128053008+incompatible
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.0.0-20191212015549-86a326830157
)
