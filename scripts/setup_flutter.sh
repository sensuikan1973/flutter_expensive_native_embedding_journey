#!/usr/bin/env zsh

# See: https://github.com/koalaman/shellcheck/issues/809
# shellcheck shell=bash

set -euxo pipefail

flutter channel master

flutter config --no-analytics

flutter config --enable-ios
flutter config --enable-android
flutter config --enable-macos-desktop

flutter config --no-enable-windows-desktop
flutter config --no-enable-linux-desktop
flutter config --no-enable-web

flutter clean
flutter upgrade
