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

# Unit tests for SwaggerClient::Broadcast
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Broadcast' do
  before do
    # run before each test
    @instance = SwaggerClient::Broadcast.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Broadcast' do
    it 'should create an instance of Broadcast' do
      expect(@instance).to be_instance_of(SwaggerClient::Broadcast)
    end
  end
  describe 'test attribute "tx_data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
