=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'date'

module Tatum
  class DeployCeloErc20OffchainKMSXpub
    # Name of the ERC20 token - stored as a symbol on Blockchain
    attr_accessor :symbol

    # max supply of ERC20 token.
    attr_accessor :supply

    # Description of the ERC20 token
    attr_accessor :description

    # Base pair for ERC20 token. 1 token will be equal to 1 unit of base pair. Transaction value will be calculated according to this base pair.
    attr_accessor :base_pair

    # Exchange rate of the base pair. Each unit of the created curency will represent value of baseRate*1 basePair.
    attr_accessor :base_rate

    attr_accessor :customer

    # Extended public key (xpub), from which address, where all initial supply will be stored, will be generated. Either xpub and derivationIndex, or address must be present, not both.
    attr_accessor :xpub

    # Derivation index for xpub to generate specific deposit address.
    attr_accessor :derivation_index

    # Identifier of the mnemonic / private key associated in signing application. When hash identifies mnemonic, index must be present to represent specific account to pay from. Private key, mnemonic or signature Id must be present.
    attr_accessor :signature_id

    # Nonce to be set to Ethereum transaction. If not present, last known nonce will be used.
    attr_accessor :nonce

    # Currency to pay for transaction gas
    attr_accessor :fee_currency

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'symbol' => :'symbol',
        :'supply' => :'supply',
        :'description' => :'description',
        :'base_pair' => :'basePair',
        :'base_rate' => :'baseRate',
        :'customer' => :'customer',
        :'xpub' => :'xpub',
        :'derivation_index' => :'derivationIndex',
        :'signature_id' => :'signatureId',
        :'nonce' => :'nonce',
        :'fee_currency' => :'feeCurrency'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'symbol' => :'',
        :'supply' => :'',
        :'description' => :'',
        :'base_pair' => :'',
        :'base_rate' => :'',
        :'customer' => :'',
        :'xpub' => :'',
        :'derivation_index' => :'',
        :'signature_id' => :'',
        :'nonce' => :'',
        :'fee_currency' => :''
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Tatum::DeployCeloErc20OffchainKMSXpub` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Tatum::DeployCeloErc20OffchainKMSXpub`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'symbol')
        self.symbol = attributes[:'symbol']
      end

      if attributes.key?(:'supply')
        self.supply = attributes[:'supply']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'base_pair')
        self.base_pair = attributes[:'base_pair']
      end

      if attributes.key?(:'base_rate')
        self.base_rate = attributes[:'base_rate']
      else
        self.base_rate = 1
      end

      if attributes.key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.key?(:'xpub')
        self.xpub = attributes[:'xpub']
      end

      if attributes.key?(:'derivation_index')
        self.derivation_index = attributes[:'derivation_index']
      end

      if attributes.key?(:'signature_id')
        self.signature_id = attributes[:'signature_id']
      end

      if attributes.key?(:'nonce')
        self.nonce = attributes[:'nonce']
      end

      if attributes.key?(:'fee_currency')
        self.fee_currency = attributes[:'fee_currency']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @symbol.nil?
        invalid_properties.push('invalid value for "symbol", symbol cannot be nil.')
      end

      if @supply.nil?
        invalid_properties.push('invalid value for "supply", supply cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @base_pair.nil?
        invalid_properties.push('invalid value for "base_pair", base_pair cannot be nil.')
      end

      if @xpub.nil?
        invalid_properties.push('invalid value for "xpub", xpub cannot be nil.')
      end

      if @derivation_index.nil?
        invalid_properties.push('invalid value for "derivation_index", derivation_index cannot be nil.')
      end

      if @signature_id.nil?
        invalid_properties.push('invalid value for "signature_id", signature_id cannot be nil.')
      end

      if @fee_currency.nil?
        invalid_properties.push('invalid value for "fee_currency", fee_currency cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @symbol.nil?
      return false if @supply.nil?
      return false if @description.nil?
      return false if @base_pair.nil?
      base_pair_validator = EnumAttributeValidator.new('', ['AED', 'AFN', 'ALL', 'AMD', 'ANG', 'AOA', 'ARS', 'AUD', 'AWG', 'AZN', 'BAM', 'BAT', 'BBD', 'BCH', 'BDT', 'BGN', 'BHD', 'BIF', 'BMD', 'BND', 'BOB', 'BRL', 'BSD', 'BTC', 'BTN', 'BWP', 'BYN', 'BYR', 'BZD', 'CAD', 'CDF', 'CHF', 'CLF', 'CLP', 'CNY', 'COP', 'CRC', 'CUC', 'CUP', 'CVE', 'CZK', 'DJF', 'DKK', 'DOP', 'DOGE', 'DZD', 'EGP', 'ERN', 'ETB', 'ETH', 'EUR', 'FJD', 'FKP', 'FLOW', 'FUSD', 'FREE', 'GMC', 'GMC_BSC', 'RMD', 'GBP', 'GEL', 'GGP', 'GHS', 'GIP', 'GMD', 'GNF', 'GTQ', 'GYD', 'HKD', 'HNL', 'HRK', 'HTG', 'HUF', 'IDR', 'ILS', 'IMP', 'INR', 'IQD', 'IRR', 'ISK', 'JEP', 'JMD', 'JOD', 'JPY', 'KES', 'KGS', 'KHR', 'KMF', 'KPW', 'KRW', 'KWD', 'KYD', 'KZT', 'LAK', 'LBP', 'LEO', 'LINK', 'LKR', 'LRD', 'LSL', 'LTC', 'LTL', 'LVL', 'LYD', 'MAD', 'MDL', 'MGA', 'MKD', 'MKR', 'MMK', 'MMY', 'MNT', 'MOP', 'MRO', 'MUR', 'MVR', 'MWK', 'MXN', 'MYR', 'MZN', 'NAD', 'NGN', 'NIO', 'NOK', 'NPR', 'NZD', 'OMR', 'PAB', 'PAX', 'PAXG', 'PEN', 'PGK', 'PHP', 'PKR', 'PLN', 'PLTC', 'PYG', 'QAR', 'RON', 'RSD', 'RUB', 'RWF', 'SAR', 'SBD', 'SCR', 'SDG', 'SEK', 'SGD', 'SHP', 'SLL', 'SOS', 'SRD', 'STD', 'SVC', 'SYP', 'SZL', 'THB', 'TJS', 'TMT', 'TND', 'TOP', 'TRY', 'TTD', 'TRON', 'TUSD', 'BUSD', 'TWD', 'TZS', 'UAH', 'UGX', 'UNI', 'USD', 'USDC', 'USDT', 'USDT_TRON', 'USDT_MATIC', 'QTUM', 'UYU', 'UZS', 'VEF', 'VND', 'VUV', 'WBTC', 'WST', 'XAF', 'XAG', 'XAU', 'XCD', 'XCON', 'XDR', 'XLM', 'XOF', 'XPF', 'XRP', 'YER', 'ZAR', 'ZMK', 'ZMW', 'ZWL'])
      return false unless base_pair_validator.valid?(@base_pair)
      return false if @xpub.nil?
      return false if @derivation_index.nil?
      return false if @signature_id.nil?
      return false if @fee_currency.nil?
      fee_currency_validator = EnumAttributeValidator.new('', ['CELO', 'CUSD', 'CEUR'])
      return false unless fee_currency_validator.valid?(@fee_currency)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] base_pair Object to be assigned
    def base_pair=(base_pair)
      validator = EnumAttributeValidator.new('', ['AED', 'AFN', 'ALL', 'AMD', 'ANG', 'AOA', 'ARS', 'AUD', 'AWG', 'AZN', 'BAM', 'BAT', 'BBD', 'BCH', 'BDT', 'BGN', 'BHD', 'BIF', 'BMD', 'BND', 'BOB', 'BRL', 'BSD', 'BTC', 'BTN', 'BWP', 'BYN', 'BYR', 'BZD', 'CAD', 'CDF', 'CHF', 'CLF', 'CLP', 'CNY', 'COP', 'CRC', 'CUC', 'CUP', 'CVE', 'CZK', 'DJF', 'DKK', 'DOP', 'DOGE', 'DZD', 'EGP', 'ERN', 'ETB', 'ETH', 'EUR', 'FJD', 'FKP', 'FLOW', 'FUSD', 'FREE', 'GMC', 'GMC_BSC', 'RMD', 'GBP', 'GEL', 'GGP', 'GHS', 'GIP', 'GMD', 'GNF', 'GTQ', 'GYD', 'HKD', 'HNL', 'HRK', 'HTG', 'HUF', 'IDR', 'ILS', 'IMP', 'INR', 'IQD', 'IRR', 'ISK', 'JEP', 'JMD', 'JOD', 'JPY', 'KES', 'KGS', 'KHR', 'KMF', 'KPW', 'KRW', 'KWD', 'KYD', 'KZT', 'LAK', 'LBP', 'LEO', 'LINK', 'LKR', 'LRD', 'LSL', 'LTC', 'LTL', 'LVL', 'LYD', 'MAD', 'MDL', 'MGA', 'MKD', 'MKR', 'MMK', 'MMY', 'MNT', 'MOP', 'MRO', 'MUR', 'MVR', 'MWK', 'MXN', 'MYR', 'MZN', 'NAD', 'NGN', 'NIO', 'NOK', 'NPR', 'NZD', 'OMR', 'PAB', 'PAX', 'PAXG', 'PEN', 'PGK', 'PHP', 'PKR', 'PLN', 'PLTC', 'PYG', 'QAR', 'RON', 'RSD', 'RUB', 'RWF', 'SAR', 'SBD', 'SCR', 'SDG', 'SEK', 'SGD', 'SHP', 'SLL', 'SOS', 'SRD', 'STD', 'SVC', 'SYP', 'SZL', 'THB', 'TJS', 'TMT', 'TND', 'TOP', 'TRY', 'TTD', 'TRON', 'TUSD', 'BUSD', 'TWD', 'TZS', 'UAH', 'UGX', 'UNI', 'USD', 'USDC', 'USDT', 'USDT_TRON', 'USDT_MATIC', 'QTUM', 'UYU', 'UZS', 'VEF', 'VND', 'VUV', 'WBTC', 'WST', 'XAF', 'XAG', 'XAU', 'XCD', 'XCON', 'XDR', 'XLM', 'XOF', 'XPF', 'XRP', 'YER', 'ZAR', 'ZMK', 'ZMW', 'ZWL'])
      unless validator.valid?(base_pair)
        fail ArgumentError, "invalid value for \"base_pair\", must be one of #{validator.allowable_values}."
      end
      @base_pair = base_pair
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fee_currency Object to be assigned
    def fee_currency=(fee_currency)
      validator = EnumAttributeValidator.new('', ['CELO', 'CUSD', 'CEUR'])
      unless validator.valid?(fee_currency)
        fail ArgumentError, "invalid value for \"fee_currency\", must be one of #{validator.allowable_values}."
      end
      @fee_currency = fee_currency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          symbol == o.symbol &&
          supply == o.supply &&
          description == o.description &&
          base_pair == o.base_pair &&
          base_rate == o.base_rate &&
          customer == o.customer &&
          xpub == o.xpub &&
          derivation_index == o.derivation_index &&
          signature_id == o.signature_id &&
          nonce == o.nonce &&
          fee_currency == o.fee_currency && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [symbol, supply, description, base_pair, base_rate, customer, xpub, derivation_index, signature_id, nonce, fee_currency].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      super
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        Tatum.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = super
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
