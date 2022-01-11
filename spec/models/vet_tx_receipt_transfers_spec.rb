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

# Unit tests for Tatum::VetTxReceiptTransfers
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VetTxReceiptTransfers' do
  before do
    # run before each test
    @instance = Tatum::VetTxReceiptTransfers.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VetTxReceiptTransfers' do
    it 'should create an instance of VetTxReceiptTransfers' do
      expect(@instance).to be_instance_of(Tatum::VetTxReceiptTransfers)
    end
  end
  describe 'test attribute "sender"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "recipient"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
