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

# Unit tests for SwaggerClient::DeployErc20SignatureResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DeployErc20SignatureResponse' do
  before do
    # run before each test
    @instance = SwaggerClient::DeployErc20SignatureResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeployErc20SignatureResponse' do
    it 'should create an instance of DeployErc20SignatureResponse' do
      expect(@instance).to be_instance_of(SwaggerClient::DeployErc20SignatureResponse)
    end
  end
  describe 'test attribute "account_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "signature_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
