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

# Unit tests for SwaggerClient::Error403BscMnemonicPrivateKey
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Error403BscMnemonicPrivateKey' do
  before do
    # run before each test
    @instance = SwaggerClient::Error403BscMnemonicPrivateKey.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Error403BscMnemonicPrivateKey' do
    it 'should create an instance of Error403BscMnemonicPrivateKey' do
      expect(@instance).to be_instance_of(SwaggerClient::Error403BscMnemonicPrivateKey)
    end
  end
  describe 'test attribute "error_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "status_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
