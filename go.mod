module github.com/juju-solutions/hostpath-provisioner

go 1.15

require (
	github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b
	golang.org/x/time v0.0.0-20201208040808-7e3f01d25324 // indirect
	k8s.io/api v0.20.1
	k8s.io/apimachinery v0.20.1
	k8s.io/client-go v0.20.1
	sigs.k8s.io/sig-storage-lib-external-provisioner/v6 v6.2.0
)
