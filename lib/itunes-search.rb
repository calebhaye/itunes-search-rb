require 'rubygems'
require 'net/http'
require 'uri'
require 'json'
require "cgi"
require 'rest-client'

directory = File.expand_path(File.dirname(__FILE__))
require File.join(directory,"itunes-search", "base")
require File.join(directory,"itunes-search","search")
require File.join(directory,"itunes-search","lookup")
require File.join(directory,"itunes-search","result")