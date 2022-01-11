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

# Unit tests for SwaggerClient::Erc20TransferBody
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Erc20TransferBody' do
  before do
    # run before each test
    @instance = SwaggerClient::Erc20TransferBody.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Erc20TransferBody' do
    it 'should create an instance of Erc20TransferBody' do
      expect(@instance).to be_instance_of(SwaggerClient::Erc20TransferBody)
    end
  end
end
