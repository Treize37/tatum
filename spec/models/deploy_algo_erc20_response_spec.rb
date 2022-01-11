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

# Unit tests for SwaggerClient::DeployAlgoErc20Response
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DeployAlgoErc20Response' do
  before do
    # run before each test
    @instance = SwaggerClient::DeployAlgoErc20Response.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeployAlgoErc20Response' do
    it 'should create an instance of DeployAlgoErc20Response' do
      expect(@instance).to be_instance_of(SwaggerClient::DeployAlgoErc20Response)
    end
  end
  describe 'test attribute "account_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tx_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
