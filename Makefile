VERSION ?= 0.0.8
CONTAINER_MANAGER ?= podman
IMG ?= quay.io/devtools-qe-incubator/deliverest:v${VERSION}

.PHONY: oci-build
oci-build: 
	${CONTAINER_MANAGER} build -t ${IMG} -f Containerfile .

.PHONY: oci-push
oci-push:
	${CONTAINER_MANAGER} push ${IMG}
