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

# Unit tests for SwaggerClient::XApiKeyBody
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'XApiKeyBody' do
  before do
    # run before each test
    @instance = SwaggerClient::XApiKeyBody.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of XApiKeyBody' do
    it 'should create an instance of XApiKeyBody' do
      expect(@instance).to be_instance_of(SwaggerClient::XApiKeyBody)
    end
  end
  describe 'test attribute "rawtxn"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end