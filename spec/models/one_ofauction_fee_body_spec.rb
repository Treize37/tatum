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

# Unit tests for SwaggerClient::OneOfauctionFeeBody
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OneOfauctionFeeBody' do
  before do
    # run before each test
    @instance = SwaggerClient::OneOfauctionFeeBody.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OneOfauctionFeeBody' do
    it 'should create an instance of OneOfauctionFeeBody' do
      expect(@instance).to be_instance_of(SwaggerClient::OneOfauctionFeeBody)
    end
  end
end
