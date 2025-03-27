.PHONY: install init clean pub-get pub-run-build_runner-build all build

all: clean init build


# ==================================================================================================
# install
# ==================================================================================================
install:
	@sh scripts/install.sh

install_tools:
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

clean_library:
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
	@make build_design_token

build_design_token:
	@figma2flutter --input token.json --output packages/design/lib/src/tokens/generated/

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