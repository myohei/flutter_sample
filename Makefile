SHELL=/bin/bash
FLUTTER = fvm flutter

.PHONY: setup
setup:
	@npm install

.PHONY: dependencies
dependencies:
	@${FLUTTER} pub get

.PHONY: analyze
analyze:
	@${FLUTTER} analyze

.PHONY: format
format:
	@${FLUTTER} format --dry-run --set-exit-if-changed .

.PHONY: fa
fa: analyze format

.PHONY: build-runner
build-runner:
	${FLUTTER} packages pub run build_runner build --delete-conflicting-outputs

.PHONY: br
br: build-runner

.PHONY: test
test:
	${FLUTTER} test --coverage
