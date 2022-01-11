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

# Unit tests for SwaggerClient::CreateSubscriptionOffchain
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateSubscriptionOffchain' do
  before do
    # run before each test
    @instance = SwaggerClient::CreateSubscriptionOffchain.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateSubscriptionOffchain' do
    it 'should create an instance of CreateSubscriptionOffchain' do
      expect(@instance).to be_instance_of(SwaggerClient::CreateSubscriptionOffchain)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["OFFCHAIN_WITHDRAWAL"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "attr"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end