=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'spec_helper'
require 'json'

# Unit tests for Tatum::LedgerOrderBookApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LedgerOrderBookApi' do
  before do
    # run before each test
    @instance = Tatum::LedgerOrderBookApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LedgerOrderBookApi' do
    it 'should create an instance of LedgerOrderBookApi' do
      expect(@instance).to be_instance_of(Tatum::LedgerOrderBookApi)
    end
  end

  # unit tests for chart_request
  # Obtain chart data from historical closed trades
  # &lt;h4&gt;2 credits for API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Obtain data from the closed trades for entering in the chart. Time interval is set between &lt;i&gt;from&lt;/i&gt; and &lt;i&gt;to&lt;/i&gt; and there is defined time frame. There can be obtained at most 200 time points in the time interval.&lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [Array<Chart>]
  describe 'chart_request test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_account_trades
  # Cancel all existing trades for account
  # &lt;h4&gt;1 credit for API call, 1 credit for each cancelled trade. 1 API call + 2 cancellations  &#x3D; 3 credits.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Cancel all trades for account.&lt;/p&gt;
  # @param id Account ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_account_trades test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_trade
  # Cancel existing trade
  # &lt;h4&gt;1 credit for API call&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Cancel existing trade.&lt;/p&gt;
  # @param id Trade ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_trade test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_buy_trades
  # List all active buy trades
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;List all active buy trades.&lt;/p&gt;
  # @param page_size Max number of items per page is 50.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id Account ID. If present, list current active buy trades for that account.
  # @option opts [String] :customer_id Customer ID. If present, list current active buy trades for that customer.
  # @option opts [BigDecimal] :offset Offset to obtain next page of the data.
  # @option opts [String] :pair Trade pair. If present, list current active buy trades for that pair.
  # @option opts [BOOLEAN] :count Get the total trade pair count based on the filter. Either count or pageSize is accepted.
  # @option opts [String] :trade_type Trade type.
  # @return [Array<Trade>]
  describe 'get_buy_trades test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_buy_trades_body
  # List all active buy trades
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;List all active buy trades.&lt;/p&gt;
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [Array<Trade>]
  describe 'get_buy_trades_body test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_historical_trades
  # List all historical trades
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;List all historical trades. It is possible to list all trades, trades for specific trading pair and/or account.&lt;/p&gt;
  # @param page_size Max number of items per page is 50.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id Account ID. If present, only closed trades for given account will be present.
  # @option opts [String] :pair Trade pair. If present, only closed trades on given trade pair will be present.
  # @option opts [BigDecimal] :offset Offset to obtain next page of the data.
  # @option opts [BOOLEAN] :count Get the total trade pair count based on the filter. Either count or pageSize is accepted.
  # @option opts [Array<String>] :types Trade types.
  # @return [Array<Trade>]
  describe 'get_historical_trades test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_historical_trades_body
  # List all historical trades
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;List all historical trades. It is possible to list all trades, trades for specific trading pair and/or account.&lt;/p&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [ListOderBookHistoryBody] :body 
  # @return [Array<Trade>]
  describe 'get_historical_trades_body test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sell_trades
  # List all active sell trades
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;List all active sell trades.&lt;/p&gt;
  # @param page_size Max number of items per page is 50.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id Account ID. If present, list current active sell trades for that account.
  # @option opts [String] :customer_id Customer ID. If present, list current active buy trades for that customer.
  # @option opts [BigDecimal] :offset Offset to obtain next page of the data.
  # @option opts [String] :pair Trade pair. If present, list current active sell trades for that pair.
  # @option opts [BOOLEAN] :count Get the total trade pair count based on the filter. Either count or pageSize is accepted.
  # @option opts [String] :trade_type Trade type.
  # @return [Array<Trade>]
  describe 'get_sell_trades test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sell_trades_body
  # List all active sell trades
  # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;List all active sell trades.&lt;/p&gt;
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [Array<Trade>]
  describe 'get_sell_trades_body test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_trade_by_id
  # Get existing trade
  # &lt;h4&gt;1 credit for API call&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get existing opened trade.&lt;/p&gt;
  # @param id Trade ID
  # @param [Hash] opts the optional parameters
  # @return [Trade]
  describe 'get_trade_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for store_trade
  # Store buy / sell trade
  # &lt;h4&gt;2 credits for API call, 2 credits for each fill of the counter trade. 1 API call + 2 fills  &#x3D; 6 credits.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Store new buy / sell trade. If there is trade already available to fill, fill as much trades as possible.&lt;br/&gt; It is possible to charge fees for the trades. Fees are an extra amount on top of the trade amount and are paid in the currency of the 1st pair to the separate fee account, e.g. for BTC/ETH pair fees will be paid in BTC.&lt;/p&gt;  &lt;p&gt; If you fill type of the trade with FUTURE_BUY or FUTURE_SELL the trade will behave as a trade future. The trade is concluded now but will be fulfilled in future. The date of fulfillment is by the “Seal Date” field. You can also block a percentage of the amount until the future trade has expired. &lt;/p&gt; &lt;p&gt;Futures can also penalize contracting parties if they don’t have the agreed balance available in their accounts. The penalty is calculated in the following way: Penalty amount &#x3D; (Percentage of incomplete deal amount because of shortage from user) × (Maximum Penalty percentage of futures deal based on blocked amount and time interval) × (total blocked value). &lt;/p&gt; &lt;p&gt;Example of the BTC/USDT trade future:&lt;/p&gt; &lt;p&gt;The maker creates a sell with the following properties: 1 BTC at a price of 60000 USDT, with a blocking percentage of 22%, a penalty percentage of 45%, a system commision of 1% and with an expiration time of within 12 hours.&lt;/p&gt; &lt;pre&gt; {   \&quot;type\&quot;: \&quot;FUTURE_SELL\&quot;,   \&quot;price\&quot;: \&quot;60000\&quot;,   \&quot;amount\&quot;: \&quot;1\&quot;,   \&quot;pair\&quot;: \&quot;BTC/USDT\&quot;,   \&quot;currency1AccountId\&quot;: \&quot;60a236db1b57f60d62612bf3\&quot;,   \&quot;currency2AccountId\&quot;: \&quot;609d0696bf835c241ac2920f\&quot;,   \&quot;fee\&quot;: 1,   \&quot;feeAccountId\&quot;: \&quot;609d0696bf835c251ac2920a\&quot;,   \&quot;attr\&quot;: {     \&quot;sealDate\&quot;: 1621990960631,     \&quot;percentBlock\&quot;: 22,     \&quot;percentPenalty\&quot;: 45   } } &lt;/pre&gt;  The taker accepts the offer with a buy and blocks 13200 USDT (60000 USDT × 0.22) in their account. &lt;pre&gt; {   \&quot;type\&quot;: \&quot;FUTURE_BUY\&quot;,   \&quot;price\&quot;: \&quot;60000\&quot;,   \&quot;amount\&quot;: \&quot;1\&quot;,   \&quot;pair\&quot;: \&quot;BTC/USDT\&quot;,   \&quot;currency1AccountId\&quot;: \&quot;60a236db1b57f60d62612bf2\&quot;,   \&quot;currency2AccountId\&quot;: \&quot;609d0696bf835c241ac2920a\&quot;,   \&quot;attr\&quot;: {     \&quot;sealDate\&quot;: 1621990960631,     \&quot;percentBlock\&quot;: 22,     \&quot;percentPenalty\&quot;: 45   } } &lt;/pre&gt; &lt;p&gt;At the time of the trade, the maker and taker have the following conditions. The maker has 0.65 BTC (35% deficit) in their account and the taker has 49200 USDT (18% deficit) in their account. &lt;/p&gt;  &lt;p&gt; The maker penalty is equal to 0.35 × 0.22 × (0.45 × 1 BTC) &#x3D; 0.03465 BTC. The taker penalty is equal to 0.18 × 0.22 × (0.45 × 60000 USDT) &#x3D; 1069.2 USDT. &lt;/p&gt; &lt;p&gt; The system commission for the maker is 1 BTC × 1% &#x3D; 0.01 BTC. The system commission for the taker is 60000 USDT × 1% &#x3D; 600 USDT. &lt;/p&gt; &lt;p&gt; The maker’s assets after deducting penalties and commissions equals 0.65 - 0.03465 - 0.01 &#x3D; 0.60535 BTC. The taker’s assets after deducting penalties and commissions equals 49200 - 1069.2 - 600 &#x3D; 47530.8 USDT. &lt;/p&gt; &lt;p&gt; The amount received by the maker after the trade is (0.60535 × 60000) + 1069.2 &#x3D; 37390.2 USDT and the taker receives 0.60535 + 0.03465 &#x3D; 0.64 BTC. &lt;/p&gt; 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [Id]
  describe 'store_trade test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
