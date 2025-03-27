.PHONY: install init clean pub-get pub-run-build_runner-build all build

all: clean init build


# ==================================================================================================
# install
# ==================================================================================================
install:
	@sh scripts/install.sh

install-tools:
	@sh scripts/install_tools.sh

# ==================================================================================================
# init
# ==================================================================================================

init:
	@echo "🌼 Initializing the project..."
	@find . -name '*.lock' -delete
	@find . -name '*overrides.yaml' -delete
	@melos bootstrap


# ==================================================================================================
# clean
# ==================================================================================================

clean:
	@echo "🧹 Cleaning the project..."
	@echo " ╠ 🛻  Cleaning the build_runner..."
	@find . -name '*.config.dart' -delete
	@find . -name '*.g.dart' -delete
	@find . -name '*.freezed.dart' -delete
	@find . -name '*.chopper.dart' -delete
	@find . -name '*.lock' -delete
	@echo " ╚ 🤖 Running flutter clean..."
	@melos clean

clean-library:
	@echo "🧹 Cleaning the library..."
	@#rm -rf ~/.gradle
	@rm -rf ~/.pub-cache

# ==================================================================================================
# build
# ==================================================================================================

build:
	@echo "🚀 Building the project..."
	@echo " ╠ 🛻  Building the all..."
	@melos build
	@make build-design-token

build-design-token:
	@figma2flutter --input token.json --output packages/design/lib/src/tokens/generated/

build-swagger:
	@echo "📟 Building the swagger..."
	@echo " ╠ 🧹 Cleaning the swagger..."
	@rm -rf packages/core/lib/src/swagger_rest_api/model/generated && mkdir -p core/lib/src/swagger_rest_api/model/generated
	@rm -rf packages/core/lib/src/swagger_rest_api/api/api_response_code.dart
	@echo " ╠ 🚜 Building the core..."
	@melos _pub:run:build_runner:build:core
	@echo " ╚ 📃 Generating the swagger api response code..."
	@dart run packages/core/lib/src/swagger_rest_api/api/api_response_code_generator.dart


# ==================================================================================================
# default
# ==================================================================================================

pub-get:
	@echo "🤖 Running flutter command..."
	@echo " ╚ 📥 flutter pub get..."
	@melos pub:get

pub-run-build_runner-build:
	@echo "🤖 Running flutter command..."
	@echo " ╚ 🛻  flutter pub run build_runner build"
	@melos pub:run:build_runner:build

pub-run-flutter_flavorizr:
	@echo "🤖 Running flutter command..."
	@echo " ╚ 🛻  flutter pub run flutter_flavorizr"
	@melos pub:run:flutter_flavorizr


# ==================================================================================================
# utility
# ==================================================================================================

format:
	@echo "⚡ Formatting the code"
	@dart fix --apply

	@DART_FILES=$$(find . -name "*.dart" | grep -v -f .formatter-ignore); \
	if [ -n "$$DART_FILES" ]; then \
		dart format $$DART_FILES; \
	fi


# Flutter 버전 변경 ex) make change-flutter-version version=3.19.6

FLUTTER_PATH := $(shell which flutter)
FLUTTER_DIR := $(dir $(FLUTTER_PATH))

change-flutter-version:
	@echo "Switching to Flutter version $(version)..."
	@cd $(FLUTTER_DIR)../ && git fetch --all && git checkout $(version) && flutter --version
	@echo "Flutter version switched to $(version)."