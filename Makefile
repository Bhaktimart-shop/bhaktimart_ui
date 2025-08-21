# Formatting
.PHONY: format-code
format-code:
	dart format \
		--output write \
		$$(find . -name "*.dart" -not \( -name "*.*mocks.dart" -or -name "*.g.dart" -or -name "*.gr.dart" -or -name "*.freezed.dart" \))

.PHONY: format-code-dry-run
format-code-dry-run:
	dart format \
		--set-exit-if-changed \
		--output none \
		$$(find . -name "*.dart" -not \( -name "*.*mocks.dart" -or -name "*.g.dart" -or -name "*.gr.dart" -or -name "*.freezed.dart" \))

# Dart Code Metrics
# On CI supply DCM_KEY and DCM_EMAIL. E.g. make dcm-analyze DCM_KEY=key DCM_EMAIL=a@b.c
.PHONY: dcm-analyze
dcm-analyze:
	dcm analyze \
		--reporter=github \
		--fatal-style \
		--fatal-warnings \
		--ci-key $$DCM_KEY \
		--email $$DCM_EMAIL \
		lib test

.PHONY: dcm-report
dcm-report:
	dcm calculate-metrics --reporter=html lib

.PHONY: dcm-checks
dcm-checks:
	dcm check-unused-files \
		--exclude-public-api \
		--ci-key $$DCM_KEY \
		--email $$DCM_EMAIL \
		lib test widgetbook && \
	dcm check-unused-code \
		--exclude-public-api \
		--ci-key $$DCM_KEY \
		--email $$DCM_EMAIL \
		lib test widgetbook && \
	dcm check-dependencies \
		--ignored-packages="dependency_validator,flutter_gen_runner,vector_graphics_compiler" \
		--ci-key $$DCM_KEY \
		--email $$DCM_EMAIL \
		lib test widgetbook

# Get All Dependencies
.PHONY: get-dependencies
get-dependencies:
	flutter pub get
	cd widgetbook && flutter pub get

# Unused Dependencies
.PHONY: unused-dependencies
unused-dependencies:
	dart run dependency_validator

# Test
.PHONY: generate-tests
generate-tests:
	dart run full_coverage

.PHONY: test
test:
	make generate-tests
	flutter test

.Phony: test-with-coverage
test-with-coverage:
	make generate-tests
	flutter test --coverage --branch-coverage

# Golden Tests
# Runs initial Golden Tests for the 1st time
.PHONY: golden-update
golden-update:
	flutter test --update-goldens --tags=golden

# Runs existing Golden specific Tests
.PHONY: golden-test
golden-test:
	flutter test --tags=golden

# Analyze
.PHONY: analyze
analyze:
	flutter analyze

# Run setup before analysis and metric checks
.PHONY: check
check:
	make lint

# Check: run all analysis and metric checks
.PHONY: lint
lint:
	make analyze
	make format-code-dry-run
	make dcm-analyze
	make dcm-checks
	make unused-dependencies

# Generate Assets
.PHONY: generate-assets
generate-assets:
	cd widgetbook && fluttergen -c ./pubspec.yaml

# Generate Widgetbook
.PHONY: generate-widgetbook
generate-widgetbook:
	cd widgetbook && dart run build_runner build --delete-conflicting-outputs

# Code generation
.PHONY: generate-code
generate-code:
	dart run build_runner build --delete-conflicting-outputs