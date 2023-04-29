Y=yarn -s --prefer-offline

.PHONY: install
install: .yarn.INSTALLED
.yarn.INSTALLED: package.json yarn.lock
	yarn install
	@touch $@

.PHONY: build
build: install
	${Y} rollup -c --bundleConfigAsCjs

.PHONY: generate
generate: install
	${Y} ts-node index.ts

.PHONY: ui-live
ui-live: install generate
	${Y} parcel index.html --dist-dir ui_dist --open
