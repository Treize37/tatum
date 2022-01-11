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

# Unit tests for Tatum::BtcTransactionFromAddressKMSFromAddress
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BtcTransactionFromAddressKMSFromAddress' do
  before do
    # run before each test
    @instance = Tatum::BtcTransactionFromAddressKMSFromAddress.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BtcTransactionFromAddressKMSFromAddress' do
    it 'should create an instance of BtcTransactionFromAddressKMSFromAddress' do
      expect(@instance).to be_instance_of(Tatum::BtcTransactionFromAddressKMSFromAddress)
    end
  end
  describe 'test attribute "signature_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "address"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
