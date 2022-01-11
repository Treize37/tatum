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

# Unit tests for SwaggerClient::CreateXlmAsset
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateXlmAsset' do
  before do
    # run before each test
    @instance = SwaggerClient::CreateXlmAsset.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateXlmAsset' do
    it 'should create an instance of CreateXlmAsset' do
      expect(@instance).to be_instance_of(SwaggerClient::CreateXlmAsset)
    end
  end
  describe 'test attribute "issuer_account"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "token"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "base_pair"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AUD", "AWG", "AZN", "BAM", "BAT", "BBD", "BCH", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BRL", "BSD", "BTC", "BTN", "BWP", "BYN", "BYR", "BZD", "CAD", "CDF", "CHF", "CLF", "CLP", "CNY", "COP", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DOGE", "DZD", "EGP", "ERN", "ETB", "ETH", "EUR", "FJD", "FKP", "FLOW", "FUSD", "FREE", "GMC", "GMC_BSC", "RMD", "GBP", "GEL", "GGP", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IMP", "INR", "IQD", "IRR", "ISK", "JEP", "JMD", "JOD", "JPY", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LEO", "LINK", "LKR", "LRD", "LSL", "LTC", "LTL", "LVL", "LYD", "MAD", "MDL", "MGA", "MKD", "MKR", "MMK", "MMY", "MNT", "MOP", "MRO", "MUR", "MVR", "MWK", "MXN", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "NZD", "OMR", "PAB", "PAX", "PAXG", "PEN", "PGK", "PHP", "PKR", "PLN", "PLTC", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SEK", "SGD", "SHP", "SLL", "SOS", "SRD", "STD", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TRON", "TUSD", "BUSD", "TWD", "TZS", "UAH", "UGX", "UNI", "USD", "USDC", "USDT", "USDT_TRON", "USDT_MATIC", "QTUM", "UYU", "UZS", "VEF", "VND", "VUV", "WBTC", "WST", "XAF", "XAG", "XAU", "XCD", "XCON", "XDR", "XLM", "XOF", "XPF", "XRP", "YER", "ZAR", "ZMK", "ZMW", "ZWL"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.base_pair = value }.not_to raise_error
      # end
    end
  end

end
