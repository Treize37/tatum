=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

module SwaggerClient
  class TatumServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Freeze API Key
    # <h4>2 credits per API call.</h4><br/><p>Freeze the API Key. It's not possible to perform sensitive operations like send ledger transaction, send off-chain transaction, send blockchain transaction, broadcast blockchain transaction, perform Order book trade or create blockage. Only read operations are permitted.</p> 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def freeze_api_key(opts = {})
      freeze_api_key_with_http_info(opts)
      nil
    end

    # Freeze API Key
    # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Freeze the API Key. It&#x27;s not possible to perform sensitive operations like send ledger transaction, send off-chain transaction, send blockchain transaction, broadcast blockchain transaction, perform Order book trade or create blockage. Only read operations are permitted.&lt;/p&gt; 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def freeze_api_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TatumServiceApi.freeze_api_key ...'
      end
      # resource path
      local_var_path = '/v3/tatum/freeze'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TatumServiceApi#freeze_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List credit consumption for last month
    # <h4>1 credit per API call.</h4><br/><p>List usage information of credits.</p>
    # @param [Hash] opts the optional parameters
    # @return [Array<Consumption>]
    def get_credits(opts = {})
      data, _status_code, _headers = get_credits_with_http_info(opts)
      data
    end

    # List credit consumption for last month
    # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;List usage information of credits.&lt;/p&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Consumption>, Integer, Hash)>] Array<Consumption> data, response status code and response headers
    def get_credits_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TatumServiceApi.get_credits ...'
      end
      # resource path
      local_var_path = '/v3/tatum/usage'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<Consumption>' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TatumServiceApi#get_credits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get currenct exchange rate of the supported FIAT / crypto asset
    # <h4>1 credit per API call.</h4><br/> <p>Get currenct exchange rate of the supported FIAT / crypto asset. Base pair is EUR by default. E.g. to obtain exchange rate for the Bitcoin, response value for the API call will be expressed as 1 BTC = 10,000 EUR.</p> 
    # @param currency FIAT or crypto asset
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base_pair FIAT to convert as a basePair
    # @return [ExchangeRate]
    def get_exchange_rate(currency, opts = {})
      data, _status_code, _headers = get_exchange_rate_with_http_info(currency, opts)
      data
    end

    # Get currenct exchange rate of the supported FIAT / crypto asset
    # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt; &lt;p&gt;Get currenct exchange rate of the supported FIAT / crypto asset. Base pair is EUR by default. E.g. to obtain exchange rate for the Bitcoin, response value for the API call will be expressed as 1 BTC &#x3D; 10,000 EUR.&lt;/p&gt; 
    # @param currency FIAT or crypto asset
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base_pair FIAT to convert as a basePair
    # @return [Array<(ExchangeRate, Integer, Hash)>] ExchangeRate data, response status code and response headers
    def get_exchange_rate_with_http_info(currency, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TatumServiceApi.get_exchange_rate ...'
      end
      # verify the required parameter 'currency' is set
      if @api_client.config.client_side_validation && currency.nil?
        fail ArgumentError, "Missing the required parameter 'currency' when calling TatumServiceApi.get_exchange_rate"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['AED', 'AFN', 'ALL', 'AMD', 'ANG', 'AOA', 'ARS', 'AUD', 'AWG', 'AZN', 'BAM', 'BAT', 'BBD', 'BCH', 'BDT', 'BGN', 'BHD', 'BIF', 'BMD', 'BNB', 'BND', 'BOB', 'BRL', 'BSC', 'ADA', 'MATIC', 'BSD', 'BTC', 'BTN', 'BUSD', 'BWP', 'BYN', 'BYR', 'BZD', 'CAD', 'CAKE', 'CDF', 'CELO', 'CHF', 'CLF', 'CLP', 'CNY', 'COP', 'CRC', 'CUC', 'CUP', 'CVE', 'CZK', 'DJF', 'DKK', 'DOP', 'DOGE', 'DZD', 'EGLD', 'EGP', 'ERN', 'ETB', 'ETH', 'EUR', 'FJD', 'FKP', 'FLOW', 'FUSD', 'FREE', 'GMC', 'GMC_BSC', 'RMD', 'GBP', 'GEL', 'GGP', 'GHS', 'GIP', 'GMD', 'GNF', 'GTQ', 'GYD', 'HKD', 'HNL', 'HRK', 'HTG', 'HUF', 'IDR', 'ILS', 'IMP', 'INR', 'IQD', 'IRR', 'ISK', 'JEP', 'JMD', 'JOD', 'JPY', 'KES', 'KGS', 'KHR', 'KMF', 'KPW', 'KRW', 'KWD', 'KYD', 'KZT', 'LAK', 'LBP', 'LEO', 'LINK', 'LKR', 'LRD', 'LSL', 'LTC', 'LTL', 'LVL', 'LYD', 'MAD', 'MDL', 'MGA', 'MKD', 'MKR', 'MMK', 'MMY', 'MNT', 'MOP', 'MRO', 'MUR', 'MVR', 'MWK', 'MXN', 'MYR', 'MZN', 'NAD', 'NGN', 'NIO', 'NOK', 'NPR', 'NZD', 'OMR', 'PAB', 'PAX', 'PAXG', 'PEN', 'PGK', 'PHP', 'PKR', 'PLN', 'PLTC', 'PYG', 'QAR', 'RON', 'RSD', 'RUB', 'RWF', 'SAR', 'SBD', 'SCR', 'SDG', 'SEK', 'SGD', 'SHP', 'SLL', 'SOS', 'SRD', 'STD', 'SVC', 'SYP', 'SZL', 'THB', 'TJS', 'TMT', 'TND', 'TOP', 'TRY', 'TTD', 'TRON', 'TUSD', 'TWD', 'TZS', 'UAH', 'UGX', 'UNI', 'USD', 'USDC', 'USDT', 'USDT_TRON', 'USDT_MATIC', 'QTUM', 'UYU', 'UZS', 'VEF', 'VND', 'VUV', 'WST', 'XAF', 'XAG', 'XAU', 'XCD', 'WBTC', 'XCON', 'XDR', 'XLM', 'XOF', 'XPF', 'XRP', 'YER', 'ZAR', 'ZMK', 'ZMW', 'ZWL'].include?(currency)
        fail ArgumentError, "invalid value for 'currency', must be one of AED, AFN, ALL, AMD, ANG, AOA, ARS, AUD, AWG, AZN, BAM, BAT, BBD, BCH, BDT, BGN, BHD, BIF, BMD, BNB, BND, BOB, BRL, BSC, ADA, MATIC, BSD, BTC, BTN, BUSD, BWP, BYN, BYR, BZD, CAD, CAKE, CDF, CELO, CHF, CLF, CLP, CNY, COP, CRC, CUC, CUP, CVE, CZK, DJF, DKK, DOP, DOGE, DZD, EGLD, EGP, ERN, ETB, ETH, EUR, FJD, FKP, FLOW, FUSD, FREE, GMC, GMC_BSC, RMD, GBP, GEL, GGP, GHS, GIP, GMD, GNF, GTQ, GYD, HKD, HNL, HRK, HTG, HUF, IDR, ILS, IMP, INR, IQD, IRR, ISK, JEP, JMD, JOD, JPY, KES, KGS, KHR, KMF, KPW, KRW, KWD, KYD, KZT, LAK, LBP, LEO, LINK, LKR, LRD, LSL, LTC, LTL, LVL, LYD, MAD, MDL, MGA, MKD, MKR, MMK, MMY, MNT, MOP, MRO, MUR, MVR, MWK, MXN, MYR, MZN, NAD, NGN, NIO, NOK, NPR, NZD, OMR, PAB, PAX, PAXG, PEN, PGK, PHP, PKR, PLN, PLTC, PYG, QAR, RON, RSD, RUB, RWF, SAR, SBD, SCR, SDG, SEK, SGD, SHP, SLL, SOS, SRD, STD, SVC, SYP, SZL, THB, TJS, TMT, TND, TOP, TRY, TTD, TRON, TUSD, TWD, TZS, UAH, UGX, UNI, USD, USDC, USDT, USDT_TRON, USDT_MATIC, QTUM, UYU, UZS, VEF, VND, VUV, WST, XAF, XAG, XAU, XCD, WBTC, XCON, XDR, XLM, XOF, XPF, XRP, YER, ZAR, ZMK, ZMW, ZWL"
      end
      if @api_client.config.client_side_validation && opts[:'base_pair'] && !['AED', 'AFN', 'ALL', 'AMD', 'ANG', 'AOA', 'ARS', 'AUD', 'AWG', 'AZN', 'BAM', 'BBD', 'BDT', 'BGN', 'BHD', 'BIF', 'BMD', 'BND', 'BOB', 'BRL', 'BSD', 'BTN', 'BWP', 'BYN', 'BYR', 'BZD', 'CAD', 'CDF', 'CHF', 'CLF', 'CLP', 'CNY', 'COP', 'CRC', 'CUC', 'CUP', 'CVE', 'CZK', 'DJF', 'DKK', 'DOP', 'DOGE', 'DZD', 'EGP', 'ERN', 'ETB', 'ETH', 'EUR', 'FJD', 'FKP', 'FLOW', 'FUSD', 'GBP', 'GEL', 'GGP', 'GHS', 'GIP', 'GMD', 'GNF', 'GTQ', 'GYD', 'HKD', 'HNL', 'HRK', 'HTG', 'HUF', 'IDR', 'ILS', 'IMP', 'INR', 'IQD', 'IRR', 'ISK', 'JEP', 'JMD', 'JOD', 'JPY', 'KES', 'KGS', 'KHR', 'KMF', 'KPW', 'KRW', 'KWD', 'KYD', 'KZT', 'LAK', 'LBP', 'LKR', 'LRD', 'LSL', 'LTL', 'LVL', 'LYD', 'MAD', 'MDL', 'MGA', 'MKD', 'MMK', 'MNT', 'MOP', 'MRO', 'MUR', 'MVR', 'MWK', 'MXN', 'MYR', 'MZN', 'NAD', 'NGN', 'NIO', 'NOK', 'NPR', 'NZD', 'OMR', 'PAB', 'PEN', 'PGK', 'PHP', 'PKR', 'PLN', 'PYG', 'QAR', 'RON', 'RSD', 'RUB', 'RWF', 'SAR', 'SBD', 'SCR', 'SDG', 'SEK', 'SGD', 'SHP', 'SLL', 'SOS', 'SRD', 'STD', 'SVC', 'SYP', 'SZL', 'THB', 'TJS', 'TMT', 'TND', 'TOP', 'TRY', 'TTD', 'TWD', 'TZS', 'UAH', 'UGX', 'USD', 'UYU', 'UZS', 'VEF', 'VND', 'VUV', 'WST', 'XAF', 'XAG', 'XAU', 'XCD', 'XDR', 'XOF', 'XPF', 'YER', 'ZAR', 'ZMK', 'ZMW', 'ZWL'].include?(opts[:'base_pair'])
        fail ArgumentError, 'invalid value for "base_pair", must be one of AED, AFN, ALL, AMD, ANG, AOA, ARS, AUD, AWG, AZN, BAM, BBD, BDT, BGN, BHD, BIF, BMD, BND, BOB, BRL, BSD, BTN, BWP, BYN, BYR, BZD, CAD, CDF, CHF, CLF, CLP, CNY, COP, CRC, CUC, CUP, CVE, CZK, DJF, DKK, DOP, DOGE, DZD, EGP, ERN, ETB, ETH, EUR, FJD, FKP, FLOW, FUSD, GBP, GEL, GGP, GHS, GIP, GMD, GNF, GTQ, GYD, HKD, HNL, HRK, HTG, HUF, IDR, ILS, IMP, INR, IQD, IRR, ISK, JEP, JMD, JOD, JPY, KES, KGS, KHR, KMF, KPW, KRW, KWD, KYD, KZT, LAK, LBP, LKR, LRD, LSL, LTL, LVL, LYD, MAD, MDL, MGA, MKD, MMK, MNT, MOP, MRO, MUR, MVR, MWK, MXN, MYR, MZN, NAD, NGN, NIO, NOK, NPR, NZD, OMR, PAB, PEN, PGK, PHP, PKR, PLN, PYG, QAR, RON, RSD, RUB, RWF, SAR, SBD, SCR, SDG, SEK, SGD, SHP, SLL, SOS, SRD, STD, SVC, SYP, SZL, THB, TJS, TMT, TND, TOP, TRY, TTD, TWD, TZS, UAH, UGX, USD, UYU, UZS, VEF, VND, VUV, WST, XAF, XAG, XAU, XCD, XDR, XOF, XPF, YER, ZAR, ZMK, ZMW, ZWL'
      end
      # resource path
      local_var_path = '/v3/tatum/rate/{currency}'.sub('{' + 'currency' + '}', currency.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'basePair'] = opts[:'base_pair'] if !opts[:'base_pair'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ExchangeRate' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TatumServiceApi#get_exchange_rate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get API version
    # <h4>1 credit per API call.</h4><br/><p>Get current version of the API.</p>
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20034]
    def get_version(opts = {})
      data, _status_code, _headers = get_version_with_http_info(opts)
      data
    end

    # Get API version
    # &lt;h4&gt;1 credit per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Get current version of the API.&lt;/p&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20034, Integer, Hash)>] InlineResponse20034 data, response status code and response headers
    def get_version_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TatumServiceApi.get_version ...'
      end
      # resource path
      local_var_path = '/v3/tatum/version'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InlineResponse20034' 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TatumServiceApi#get_version\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Unfreeze API Key
    # <h4>2 credits per API call.</h4><br/><p>Unfreeze the API Key. It's possible to perform sensitive operations like send ledger transaction, send off-chain transaction, send blockchain transaction, broadcast blockchain transaction, perform Order book trade or create blockage again.</p> 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unfreeze_api_key(opts = {})
      unfreeze_api_key_with_http_info(opts)
      nil
    end

    # Unfreeze API Key
    # &lt;h4&gt;2 credits per API call.&lt;/h4&gt;&lt;br/&gt;&lt;p&gt;Unfreeze the API Key. It&#x27;s possible to perform sensitive operations like send ledger transaction, send off-chain transaction, send blockchain transaction, broadcast blockchain transaction, perform Order book trade or create blockage again.&lt;/p&gt; 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def unfreeze_api_key_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TatumServiceApi.unfreeze_api_key ...'
      end
      # resource path
      local_var_path = '/v3/tatum/freeze'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['X-Api-Key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TatumServiceApi#unfreeze_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end