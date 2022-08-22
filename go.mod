module github.com/Harkishen-Singh/prometheus-index-roaringbitmaps

go 1.14

require (
	github.com/Azure/azure-sdk-for-go v65.0.0+incompatible
	github.com/Azure/go-autorest/autorest v0.11.28
	github.com/Azure/go-autorest/autorest/adal v0.9.21
	github.com/alecthomas/units v0.0.0-20211218093645-b94a6e3cc137
	github.com/aws/aws-sdk-go v1.44.72
	github.com/cespare/xxhash/v2 v2.1.2
	github.com/dennwc/varint v1.0.0
	github.com/dgraph-io/sroar v0.0.0-20211209113350-3e3f1b382a64
	github.com/dgryski/go-sip13 v0.0.0-20200911182023-62edffca9245
	github.com/digitalocean/godo v1.82.0
	github.com/docker/docker v20.10.17+incompatible
	github.com/edsrzf/mmap-go v1.1.0
	github.com/envoyproxy/go-control-plane v0.10.3
	github.com/envoyproxy/protoc-gen-validate v0.6.7
	github.com/fsnotify/fsnotify v1.5.4
	github.com/go-kit/log v0.2.1
	github.com/go-logfmt/logfmt v0.5.1
	github.com/go-openapi/strfmt v0.21.3
	github.com/go-zookeeper/zk v1.0.3
	github.com/gogo/protobuf v1.3.2
	github.com/golang/snappy v0.0.4
	github.com/google/pprof v0.0.0-20220729232143-a41b82acbcb1
	github.com/gophercloud/gophercloud v0.25.0
	github.com/grpc-ecosystem/grpc-gateway v1.16.0
	github.com/hashicorp/consul/api v1.14.0
	github.com/hetznercloud/hcloud-go v1.35.2
	github.com/influxdata/influxdb v1.9.8
	github.com/json-iterator/go v1.1.12
	github.com/kolo/xmlrpc v0.0.0-20201022064351-38db28db192b
	github.com/linode/linodego v1.8.0
	github.com/miekg/dns v1.1.50
	github.com/mwitkow/go-conntrack v0.0.0-20190716064945-2f068394615f
	github.com/oklog/run v1.1.0
	github.com/oklog/ulid v1.3.1
	github.com/opentracing-contrib/go-stdlib v1.0.0
	github.com/opentracing/opentracing-go v1.2.0
	github.com/pkg/errors v0.9.1
	github.com/prometheus/alertmanager v0.24.0
	github.com/prometheus/client_golang v1.13.0
	github.com/prometheus/client_model v0.2.0
	github.com/prometheus/common v0.37.0
	github.com/prometheus/common/sigv4 v0.1.0
	github.com/prometheus/exporter-toolkit v0.7.1
	github.com/prometheus/prometheus v0.38.0
	github.com/prometheus/prometheus/documentation/examples/remote_storage v0.0.0-20220822134159-a1fcfe62dbe8
	github.com/scaleway/scaleway-sdk-go v1.0.0-beta.9
	github.com/shurcooL/httpfs v0.0.0-20190707220628-8d4bc4ba7749
	github.com/shurcooL/vfsgen v0.0.0-20200824052919-0d455de96546
	github.com/stretchr/testify v1.8.0
	github.com/uber/jaeger-client-go v2.29.1+incompatible
	github.com/uber/jaeger-lib v2.4.1+incompatible
	github.com/willf/bitset v1.1.11 // indirect
	go.uber.org/atomic v1.10.0
	go.uber.org/goleak v1.1.12
	golang.org/x/net v0.0.0-20220809184613-07c6da5e1ced
	golang.org/x/oauth2 v0.0.0-20220808172628-8227340efae7
	golang.org/x/sync v0.0.0-20220722155255-886fb9371eb4
	golang.org/x/sys v0.0.0-20220808155132-1c4a2a72c664
	golang.org/x/time v0.0.0-20220722155302-e5dcc9cfc0b9
	golang.org/x/tools v0.1.12
	google.golang.org/api v0.91.0
	google.golang.org/genproto v0.0.0-20220808204814-fd01256a5276
	google.golang.org/protobuf v1.28.1
	gopkg.in/alecthomas/kingpin.v2 v2.2.6
	gopkg.in/yaml.v2 v2.4.0
	gopkg.in/yaml.v3 v3.0.1
	k8s.io/api v0.24.3
	k8s.io/apimachinery v0.24.3
	k8s.io/client-go v0.24.3
	k8s.io/klog v1.0.0
	k8s.io/klog/v2 v2.70.0
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
