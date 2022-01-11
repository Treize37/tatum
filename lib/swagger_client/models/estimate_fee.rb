=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'date'

module SwaggerClient
  class EstimateFee
    # Blockchain to estimate fee for.
    attr_accessor :chain

    # Type of transaction
    attr_accessor :type

    # Sender address, if type is TRANSFER_ERC20
    attr_accessor :sender

    # Blockchain address to send assets, if type is TRANSFER_ERC20
    attr_accessor :recipient

    # Contract address of ERC20 token, if type is TRANSFER_ERC20
    attr_accessor :contract_address

    # Amount to be sent in ERC20, if type is TRANSFER_ERC20
    attr_accessor :amount

    # If address should support ERC20 tokens, it should be marked as true. Valid only for DEPLOY_CUSTODIAL_WALLET.
    attr_accessor :enable_fungible_tokens

    # If address should support ERC721 tokens, it should be marked as true. Valid only for DEPLOY_CUSTODIAL_WALLET option.
    attr_accessor :enable_non_fungible_tokens

    # If address should support ERC1155 tokens, it should be marked as true. Valid only for DEPLOY_CUSTODIAL_WALLET option.
    attr_accessor :enable_semi_fungible_tokens

    # If address should support batch transfers of the assets, it should be marked as true. Valid only for DEPLOY_CUSTODIAL_WALLET option.
    attr_accessor :enable_batch_transactions

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
        :'chain' => :'chain',
        :'type' => :'type',
        :'sender' => :'sender',
        :'recipient' => :'recipient',
        :'contract_address' => :'contractAddress',
        :'amount' => :'amount',
        :'enable_fungible_tokens' => :'enableFungibleTokens',
        :'enable_non_fungible_tokens' => :'enableNonFungibleTokens',
        :'enable_semi_fungible_tokens' => :'enableSemiFungibleTokens',
        :'enable_batch_transactions' => :'enableBatchTransactions'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'chain' => :'Object',
        :'type' => :'Object',
        :'sender' => :'Object',
        :'recipient' => :'Object',
        :'contract_address' => :'Object',
        :'amount' => :'Object',
        :'enable_fungible_tokens' => :'Object',
        :'enable_non_fungible_tokens' => :'Object',
        :'enable_semi_fungible_tokens' => :'Object',
        :'enable_batch_transactions' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::EstimateFee` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::EstimateFee`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'chain')
        self.chain = attributes[:'chain']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'sender')
        self.sender = attributes[:'sender']
      end

      if attributes.key?(:'recipient')
        self.recipient = attributes[:'recipient']
      end

      if attributes.key?(:'contract_address')
        self.contract_address = attributes[:'contract_address']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'enable_fungible_tokens')
        self.enable_fungible_tokens = attributes[:'enable_fungible_tokens']
      end

      if attributes.key?(:'enable_non_fungible_tokens')
        self.enable_non_fungible_tokens = attributes[:'enable_non_fungible_tokens']
      end

      if attributes.key?(:'enable_semi_fungible_tokens')
        self.enable_semi_fungible_tokens = attributes[:'enable_semi_fungible_tokens']
      end

      if attributes.key?(:'enable_batch_transactions')
        self.enable_batch_transactions = attributes[:'enable_batch_transactions']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @chain.nil?
        invalid_properties.push('invalid value for "chain", chain cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @chain.nil?
      chain_validator = EnumAttributeValidator.new('Object', ['CELO', 'ETH', 'BSC', 'XDC', 'ONE', 'MATIC'])
      return false unless chain_validator.valid?(@chain)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('Object', ['DEPLOY_ERC20', 'DEPLOY_NFT', 'MINT_NFT', 'BURN_NFT', 'TRANSFER_NFT', 'TRANSFER_ERC20', 'DEPLOY_CUSTODIAL_WALLET', 'DEPLOY_AUCTION', 'DEPLOY_MARKETPLACE'])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] chain Object to be assigned
    def chain=(chain)
      validator = EnumAttributeValidator.new('Object', ['CELO', 'ETH', 'BSC', 'XDC', 'ONE', 'MATIC'])
      unless validator.valid?(chain)
        fail ArgumentError, "invalid value for \"chain\", must be one of #{validator.allowable_values}."
      end
      @chain = chain
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('Object', ['DEPLOY_ERC20', 'DEPLOY_NFT', 'MINT_NFT', 'BURN_NFT', 'TRANSFER_NFT', 'TRANSFER_ERC20', 'DEPLOY_CUSTODIAL_WALLET', 'DEPLOY_AUCTION', 'DEPLOY_MARKETPLACE'])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          chain == o.chain &&
          type == o.type &&
          sender == o.sender &&
          recipient == o.recipient &&
          contract_address == o.contract_address &&
          amount == o.amount &&
          enable_fungible_tokens == o.enable_fungible_tokens &&
          enable_non_fungible_tokens == o.enable_non_fungible_tokens &&
          enable_semi_fungible_tokens == o.enable_semi_fungible_tokens &&
          enable_batch_transactions == o.enable_batch_transactions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [chain, type, sender, recipient, contract_address, amount, enable_fungible_tokens, enable_non_fungible_tokens, enable_semi_fungible_tokens, enable_batch_transactions].hash
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
        SwaggerClient.const_get(type).build_from_hash(value)
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
      hash = {}
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
