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

# Unit tests for SwaggerClient::GenerateCustodialWalletCeloKMS
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GenerateCustodialWalletCeloKMS' do
  before do
    # run before each test
    @instance = SwaggerClient::GenerateCustodialWalletCeloKMS.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GenerateCustodialWalletCeloKMS' do
    it 'should create an instance of GenerateCustodialWalletCeloKMS' do
      expect(@instance).to be_instance_of(SwaggerClient::GenerateCustodialWalletCeloKMS)
    end
  end
  describe 'test attribute "chain"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CELO"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.chain = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "fee_currency"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CELO", "CUSD", "CEUR"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.fee_currency = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "signature_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "index"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "enable_fungible_tokens"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "enable_non_fungible_tokens"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "enable_semi_fungible_tokens"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "enable_batch_transactions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "fee"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "nonce"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
