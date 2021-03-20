
VPPDOC_TARGET_DIR := ./static/docs/vpp/
VPPDOC_SRC_DIR := ${VPP_DIR}/docs/_build/html/.

VERSION ?= v2101

check-%:
	@: $(if $(value $*),,$(error $* is undefined))

.PHONY: vppdoc
vppdoc: featurelist check-VERSION check-VPP_DIR
	$(MAKE) -C ${VPP_DIR} docs-clean
	$(MAKE) -C ${VPP_DIR} docs-venv
	$(MAKE) -C ${VPP_DIR} docs
	@rm -rf ${VPPDOC_TARGET_DIR}/${VERSION}
	@cp -r ${VPPDOC_SRC_DIR} ${VPPDOC_TARGET_DIR}/${VERSION}
	@echo "Built docs for VPP $(shell ${VPP_DIR}/src/scripts/version)"

.PHONY: featurelist
featurelist: check-VPP_DIR
	( \
	  source ${VPP_DIR}/sphinx_venv/bin/activate ; \
	  (cd ${VPP_DIR} && find . -name FEATURE.yaml) | \
		(cd ${VPP_DIR} && ./src/scripts/fts.py --markdown) > \
		./content/vppProject/vppfeatures/features.md ; \
	)

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
