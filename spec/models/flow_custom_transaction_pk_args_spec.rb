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

# Unit tests for Tatum::FlowCustomTransactionPKArgs
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FlowCustomTransactionPKArgs' do
  before do
    # run before each test
    @instance = Tatum::FlowCustomTransactionPKArgs.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FlowCustomTransactionPKArgs' do
    it 'should create an instance of FlowCustomTransactionPKArgs' do
      expect(@instance).to be_instance_of(Tatum::FlowCustomTransactionPKArgs)
    end
  end
  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Identity", "UInt", "Int", "UInt8", "Int8", "UInt16", "Int16", "UInt32", "Int32", "UInt64", "Int64", "UInt128", "Int128", "UInt256", "Int256", "Word8", "Word16", "Word32", "Word64", "UFix64", "Fix64", "String", "Character", "Bool", "Address", "Void", "Optional", "Reference", "Array", "Dictionary", "Event", "Resource", "Struct"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "sub_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Identity", "UInt", "Int", "UInt8", "Int8", "UInt16", "Int16", "UInt32", "Int32", "UInt64", "Int64", "UInt128", "Int128", "UInt256", "Int256", "Word8", "Word16", "Word32", "Word64", "UFix64", "Fix64", "String", "Character", "Bool", "Address", "Void", "Optional", "Reference", "Array", "Dictionary", "Event", "Resource", "Struct"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.sub_type = value }.not_to raise_error
      # end
    end
  end

end
