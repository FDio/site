
VPPDOC_TARGET_DIR := ./static/docs/vpp/
VPPDOC_SRC_DIR := ${VPP_DIR}/build-root/docs/html/.

VERSION ?= master

check-%:
	@: $(if $(value $*),,$(error $* is undefined))

.PHONY: init
init: check-VPP_DIR
	$(MAKE) -C ${VPP_DIR} docs

.PHONY: vppdoc
vppdoc: init check-VERSION check-VPP_DIR
	@rm -rf ${VPPDOC_TARGET_DIR}/${VERSION}
	@cp -r ${VPPDOC_SRC_DIR} ${VPPDOC_TARGET_DIR}/${VERSION}
	@echo "Built docs for VPP $(shell ${VPP_DIR}/src/scripts/version)"

build:
	git submodule update --init --recursive

update-themes:
	git submodule update --remote

yarn:
	yarn

serve: yarn
	hugo server \
		--buildDrafts \
		--buildFuture \
		--disableFastRender
