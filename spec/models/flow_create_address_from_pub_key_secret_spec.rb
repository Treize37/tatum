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

# Unit tests for SwaggerClient::FlowCreateAddressFromPubKeySecret
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FlowCreateAddressFromPubKeySecret' do
  before do
    # run before each test
    @instance = SwaggerClient::FlowCreateAddressFromPubKeySecret.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FlowCreateAddressFromPubKeySecret' do
    it 'should create an instance of FlowCreateAddressFromPubKeySecret' do
      expect(@instance).to be_instance_of(SwaggerClient::FlowCreateAddressFromPubKeySecret)
    end
  end
  describe 'test attribute "account"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "public_key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "private_key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
