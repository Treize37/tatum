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

# Unit tests for Tatum::SolanaTxTransaction
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SolanaTxTransaction' do
  before do
    # run before each test
    @instance = Tatum::SolanaTxTransaction.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SolanaTxTransaction' do
    it 'should create an instance of SolanaTxTransaction' do
      expect(@instance).to be_instance_of(Tatum::SolanaTxTransaction)
    end
  end
  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "signatures"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
