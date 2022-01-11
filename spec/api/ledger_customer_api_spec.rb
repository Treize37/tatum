=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::LedgerCustomerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LedgerCustomerApi' do
  before do
    # run before each test
    @instance = SwaggerClient::LedgerCustomerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LedgerCustomerApi' do
    it 'should create an instance of LedgerCustomerApi' do
      expect(@instance).to be_instance_of(SwaggerClient::LedgerCustomerApi)
    end
  end

  # unit tests for activate_customer
  # Activate customer
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Activated customer is able to do any operation.&lt;/p&gt;
  # @param id Customer internal ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'activate_customer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for deactivate_customer
  # Deactivate customer
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Deactivate customer is not able to do any operation. Customer can be deactivated only when all their accounts are already deactivated.&lt;/p&gt;
  # @param id Customer internal ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'deactivate_customer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for disable_customer
  # Disable customer
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Disabled customer cannot perform end-user operations, such as create new accounts or send transactions. Available balance on all accounts is set to 0. Account balance will stay untouched.&lt;/p&gt;
  # @param id Customer internal ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'disable_customer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for enable_customer
  # Enable customer
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Enabled customer can perform all operations. By default all customers are enabled. All previously blocked account balances will be unblocked.&lt;/p&gt;
  # @param id Customer internal ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'enable_customer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_all_customers
  # List all customers
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;List of all customers. Also inactive an disabled customers are present.&lt;/p&gt; 
  # @param page_size Max number of items per page is 50.
  # @param [Hash] opts the optional parameters
  # @option opts [BigDecimal] :offset Offset to obtain next page of the data.
  # @return [Array<Customer>]
  describe 'find_all_customers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_customer_by_external_or_internal_id
  # Get customer details
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Using anonymized external ID or internal customer ID you can access customer detail information. Internal ID is needed to call other customer related methods.&lt;/p&gt;
  # @param id Customer external or internal ID
  # @param [Hash] opts the optional parameters
  # @return [Customer]
  describe 'get_customer_by_external_or_internal_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_customer
  # Update customer
  # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;This method is helpful in case your primary system will change ID&#x27;s or customer will change the country he/she is supposed to be in compliance with.&lt;/p&gt;
  # @param body 
  # @param id Customer internal ID
  # @param [Hash] opts the optional parameters
  # @return [Customer]
  describe 'update_customer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
