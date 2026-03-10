# frozen_string_literal: true
#
# NOTE: This project uses Fastlane for Android ONLY.
# All fastlane lanes live in android/fastlane/Fastfile.
#
# To run fastlane, ALWAYS cd into the android/ directory first:
#
#   cd android
#   bundle exec fastlane firebase_distribution
#
# This root Gemfile exists only to satisfy bundle in the project root.
# The real Gemfile with fastlane config is at android/Gemfile.

source "https://rubygems.org"

gem "fastlane"

plugins_path = File.join(File.dirname(__FILE__), 'android', 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
