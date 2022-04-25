module github.com/Harkishen-Singh/prometheus-index-roaringbitmaps

go 1.14

require (
	github.com/Azure/azure-sdk-for-go v63.0.0+incompatible
	github.com/Azure/go-autorest/autorest v0.11.25
	github.com/Azure/go-autorest/autorest/adal v0.9.18
	github.com/alecthomas/units v0.0.0-20211218093645-b94a6e3cc137
	github.com/aws/aws-sdk-go v1.43.31
	github.com/cespare/xxhash/v2 v2.1.2
	github.com/containerd/containerd v1.6.1 // indirect
	github.com/dennwc/varint v1.0.0
	github.com/dgraph-io/sroar v0.0.0-20211209113350-3e3f1b382a64
	github.com/dgryski/go-sip13 v0.0.0-20200911182023-62edffca9245
	github.com/digitalocean/godo v1.78.0
	github.com/docker/docker v20.10.14+incompatible
	github.com/edsrzf/mmap-go v1.1.0
	github.com/envoyproxy/go-control-plane v0.10.1
	github.com/envoyproxy/protoc-gen-validate v0.6.7
	github.com/fsnotify/fsnotify v1.5.1
	github.com/go-kit/log v0.2.0
	github.com/go-logfmt/logfmt v0.5.1
	github.com/go-openapi/strfmt v0.21.2
	github.com/go-zookeeper/zk v1.0.2
	github.com/gogo/protobuf v1.3.2
	github.com/golang/glog v1.0.0 // indirect
	github.com/golang/snappy v0.0.4
	github.com/google/pprof v0.0.0-20220318212150-b2ab0324ddda
	github.com/gophercloud/gophercloud v0.24.0
	github.com/grpc-ecosystem/grpc-gateway v1.16.0
	github.com/hashicorp/consul/api v1.12.0
	github.com/hetznercloud/hcloud-go v1.33.1
	github.com/influxdata/influxdb v1.9.5
	github.com/json-iterator/go v1.1.12
	github.com/kolo/xmlrpc v0.0.0-20201022064351-38db28db192b
	github.com/linode/linodego v1.4.0
	github.com/miekg/dns v1.1.48
	github.com/mwitkow/go-conntrack v0.0.0-20190716064945-2f068394615f
	github.com/oklog/run v1.1.0
	github.com/oklog/ulid v1.3.1
	github.com/opencontainers/image-spec v1.0.2 // indirect
	github.com/opentracing-contrib/go-stdlib v1.0.0
	github.com/opentracing/opentracing-go v1.2.0
	github.com/pkg/errors v0.9.1
	github.com/prometheus/alertmanager v0.24.0
	github.com/prometheus/client_golang v1.12.1
	github.com/prometheus/client_model v0.2.0
	github.com/prometheus/common v0.34.0
	github.com/prometheus/common/sigv4 v0.1.0
	github.com/prometheus/exporter-toolkit v0.7.1
	github.com/prometheus/prometheus v1.8.2-0.20220202104425-d819219dd438
	github.com/prometheus/prometheus/documentation/examples/remote_storage v0.0.0-20220422143630-fc3f1b8ded81
	github.com/scaleway/scaleway-sdk-go v1.0.0-beta.9
	github.com/shurcooL/httpfs v0.0.0-20190707220628-8d4bc4ba7749
	github.com/shurcooL/vfsgen v0.0.0-20200824052919-0d455de96546
	github.com/stretchr/testify v1.7.1
	github.com/uber/jaeger-client-go v2.29.1+incompatible
	github.com/uber/jaeger-lib v2.4.1+incompatible
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.31.0 // indirect
	go.uber.org/atomic v1.9.0
	go.uber.org/goleak v1.1.12
	golang.org/x/net v0.0.0-20220325170049-de3da57026de
	golang.org/x/oauth2 v0.0.0-20220309155454-6242fa91716a
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c
	golang.org/x/sys v0.0.0-20220328115105-d36c6a25d886
	golang.org/x/time v0.0.0-20220224211638-0e9765cccd65
	golang.org/x/tools v0.1.10
	google.golang.org/api v0.74.0
	google.golang.org/genproto v0.0.0-20220324131243-acbaeb5b85eb
	google.golang.org/protobuf v1.28.0
	gopkg.in/alecthomas/kingpin.v2 v2.2.6
	gopkg.in/yaml.v2 v2.4.0
	gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b
	k8s.io/api v0.23.6
	k8s.io/apimachinery v0.23.6
	k8s.io/client-go v0.23.6
	k8s.io/klog v1.0.0
	k8s.io/klog/v2 v2.40.1
)

replace (
	k8s.io/klog => github.com/simonpasquier/klog-gokit v0.3.0
	k8s.io/klog/v2 => github.com/simonpasquier/klog-gokit/v3 v3.0.0
)

// Exclude linodego v1.0.0 as it is no longer published on github.
exclude github.com/linode/linodego v1.0.0

// Exclude grpc v1.30.0 because of breaking changes. See #7621.
exclude (
	github.com/grpc-ecosystem/grpc-gateway v1.14.7
	google.golang.org/api v0.30.0
)

// Exclude pre-go-mod kubernetes tags, as they are older
// than v0.x releases but are picked when we update the dependencies.
exclude (
	k8s.io/client-go v1.4.0
	k8s.io/client-go v1.4.0+incompatible
	k8s.io/client-go v1.5.0
	k8s.io/client-go v1.5.0+incompatible
	k8s.io/client-go v1.5.1
	k8s.io/client-go v1.5.1+incompatible
	k8s.io/client-go v10.0.0+incompatible
	k8s.io/client-go v11.0.0+incompatible
	k8s.io/client-go v2.0.0+incompatible
	k8s.io/client-go v2.0.0-alpha.1+incompatible
	k8s.io/client-go v3.0.0+incompatible
	k8s.io/client-go v3.0.0-beta.0+incompatible
	k8s.io/client-go v4.0.0+incompatible
	k8s.io/client-go v4.0.0-beta.0+incompatible
	k8s.io/client-go v5.0.0+incompatible
	k8s.io/client-go v5.0.1+incompatible
	k8s.io/client-go v6.0.0+incompatible
	k8s.io/client-go v7.0.0+incompatible
	k8s.io/client-go v8.0.0+incompatible
	k8s.io/client-go v9.0.0+incompatible
	k8s.io/client-go v9.0.0-invalid+incompatible
)
