=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'date'

module SwaggerClient
  class XlmLedger
    # A unique identifier for this ledger.
    attr_accessor :id

    # A cursor value for use in pagination.
    attr_accessor :paging_token

    # A hex-encoded SHA-256 hash of this ledger’s XDR-encoded form.
    attr_accessor :hash

    # The sequence number of this ledger, and the parameter used in Horizon calls that require a ledger number.
    attr_accessor :sequence

    # The number of successful transactions in this ledger.
    attr_accessor :successful_transaction_count

    # The number of failed transactions in this ledger.
    attr_accessor :failed_transaction_count

    # The number of operations applied in this ledger.
    attr_accessor :operation_count

    # An ISO 8601 formatted string of when this ledger was closed.
    attr_accessor :closed_at

    # The total number of lumens in circulation.
    attr_accessor :total_coins

    # The sum of all transaction fees.
    attr_accessor :fee_pool

    # The fee the network charges per operation in a transaction.
    attr_accessor :base_fee_in_stroops

    # The reserve the network uses when calculating an account’s minimum balance.
    attr_accessor :base_reserve_in_stroops

    # The maximum number of transactions validators have agreed to process in a given ledger.
    attr_accessor :max_tx_set_size

    # The protocol version that the Stellar network was running when this ledger was committed.
    attr_accessor :protocol_version

    # A base64 encoded string of the raw LedgerHeader xdr struct for this ledger.
    attr_accessor :header_xdr

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'paging_token' => :'paging_token',
        :'hash' => :'hash',
        :'sequence' => :'sequence',
        :'successful_transaction_count' => :'successful_transaction_count',
        :'failed_transaction_count' => :'failed_transaction_count',
        :'operation_count' => :'operation_count',
        :'closed_at' => :'closed_at',
        :'total_coins' => :'total_coins',
        :'fee_pool' => :'fee_pool',
        :'base_fee_in_stroops' => :'base_fee_in_stroops',
        :'base_reserve_in_stroops' => :'base_reserve_in_stroops',
        :'max_tx_set_size' => :'max_tx_set_size',
        :'protocol_version' => :'protocol_version',
        :'header_xdr' => :'header_xdr'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Object',
        :'paging_token' => :'Object',
        :'hash' => :'Object',
        :'sequence' => :'Object',
        :'successful_transaction_count' => :'Object',
        :'failed_transaction_count' => :'Object',
        :'operation_count' => :'Object',
        :'closed_at' => :'Object',
        :'total_coins' => :'Object',
        :'fee_pool' => :'Object',
        :'base_fee_in_stroops' => :'Object',
        :'base_reserve_in_stroops' => :'Object',
        :'max_tx_set_size' => :'Object',
        :'protocol_version' => :'Object',
        :'header_xdr' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::XlmLedger` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::XlmLedger`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'paging_token')
        self.paging_token = attributes[:'paging_token']
      end

      if attributes.key?(:'hash')
        self.hash = attributes[:'hash']
      end

      if attributes.key?(:'sequence')
        self.sequence = attributes[:'sequence']
      end

      if attributes.key?(:'successful_transaction_count')
        self.successful_transaction_count = attributes[:'successful_transaction_count']
      end

      if attributes.key?(:'failed_transaction_count')
        self.failed_transaction_count = attributes[:'failed_transaction_count']
      end

      if attributes.key?(:'operation_count')
        self.operation_count = attributes[:'operation_count']
      end

      if attributes.key?(:'closed_at')
        self.closed_at = attributes[:'closed_at']
      end

      if attributes.key?(:'total_coins')
        self.total_coins = attributes[:'total_coins']
      end

      if attributes.key?(:'fee_pool')
        self.fee_pool = attributes[:'fee_pool']
      end

      if attributes.key?(:'base_fee_in_stroops')
        self.base_fee_in_stroops = attributes[:'base_fee_in_stroops']
      end

      if attributes.key?(:'base_reserve_in_stroops')
        self.base_reserve_in_stroops = attributes[:'base_reserve_in_stroops']
      end

      if attributes.key?(:'max_tx_set_size')
        self.max_tx_set_size = attributes[:'max_tx_set_size']
      end

      if attributes.key?(:'protocol_version')
        self.protocol_version = attributes[:'protocol_version']
      end

      if attributes.key?(:'header_xdr')
        self.header_xdr = attributes[:'header_xdr']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          paging_token == o.paging_token &&
          hash == o.hash &&
          sequence == o.sequence &&
          successful_transaction_count == o.successful_transaction_count &&
          failed_transaction_count == o.failed_transaction_count &&
          operation_count == o.operation_count &&
          closed_at == o.closed_at &&
          total_coins == o.total_coins &&
          fee_pool == o.fee_pool &&
          base_fee_in_stroops == o.base_fee_in_stroops &&
          base_reserve_in_stroops == o.base_reserve_in_stroops &&
          max_tx_set_size == o.max_tx_set_size &&
          protocol_version == o.protocol_version &&
          header_xdr == o.header_xdr
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, paging_token, hash, sequence, successful_transaction_count, failed_transaction_count, operation_count, closed_at, total_coins, fee_pool, base_fee_in_stroops, base_reserve_in_stroops, max_tx_set_size, protocol_version, header_xdr].hash
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
