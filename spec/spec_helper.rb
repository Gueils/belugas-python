require 'simplecov'
SimpleCov.start

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "belugas/python/parser/patterns.rb"
require "belugas/python/standard_names/base"
require "belugas/python/parser/requirements"
require "belugas/python/feature/builder"
require "belugas/python/requirement"
require "belugas/python/libraries_collection"
require "belugas/python"
