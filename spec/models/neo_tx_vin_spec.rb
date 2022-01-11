=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::NeoTxVin
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'NeoTxVin' do
  before do
    # run before each test
    @instance = SwaggerClient::NeoTxVin.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NeoTxVin' do
    it 'should create an instance of NeoTxVin' do
      expect(@instance).to be_instance_of(SwaggerClient::NeoTxVin)
    end
  end
  describe 'test attribute "txid"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "vout"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
