#!/bin/zsh

# flutter version management
dart pub global activate fvm
fvm install 3.29.2
fvm use 3.29.2

# flutter initialize
fvm flutter pub get

# multi package management
fvm dart pub global activate melos 6.3.2
fvm dart pub add melos:6.3.2 --dev
fvm dart pub get
