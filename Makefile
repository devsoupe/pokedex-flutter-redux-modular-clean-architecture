.PHONY: install init clean pub-get pub-run-build_runner-build all build

all: clean init build


# ==================================================================================================
# install
# ==================================================================================================
install:
	@sh scripts/install.sh

install-style-dictionary:
	@echo "🚀 Installing the style dictionary..."
	@npm install -g style-dictionary-figma-flutter

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

build-style-dictionary:
	@echo "🚀 Building the style dictionary..."
	@style-dictionary-figma-flutter

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


# ==================================================================================================
# utility
# ==================================================================================================

# Flutter 버전 변경 ex) make change-flutter-version version=3.29.2

FLUTTER_PATH := $(shell which flutter)
FLUTTER_DIR := $(dir $(FLUTTER_PATH))

change-flutter-version:
	@echo "Switching to Flutter version $(version)..."
	@cd $(FLUTTER_DIR)../ && git fetch --all && git checkout $(version) && flutter --version
	@echo "Flutter version switched to $(version)."