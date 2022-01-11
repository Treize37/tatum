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

# Unit tests for SwaggerClient::FlowBlockBlockSeals
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FlowBlockBlockSeals' do
  before do
    # run before each test
    @instance = SwaggerClient::FlowBlockBlockSeals.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FlowBlockBlockSeals' do
    it 'should create an instance of FlowBlockBlockSeals' do
      expect(@instance).to be_instance_of(SwaggerClient::FlowBlockBlockSeals)
    end
  end
  describe 'test attribute "block_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "execution_receipt_signatures"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "execution_receipt_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "result_approval_signatures"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end