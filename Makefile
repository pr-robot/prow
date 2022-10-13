.PHONY: security-scanning
security-scanning:
	bash hack/trivy.sh \
	${REGISTRY}/${REPO}/spray-job:${IMAGE_TAG} \
	${REGISTRY}/${REPO}/kubean-operator:${IMAGE_TAG} \
	${REGISTRY}/${REPO}/kubespray:${SPRAY_IMAGE_TAG_SHORT_SHA}
