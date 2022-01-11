=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'date'

module SwaggerClient
  class QtumIRawTransactionInfoReceipt
    # block hash
    attr_accessor :block_hash

    # block number
    attr_accessor :block_number

    # transaction hash
    attr_accessor :transaction_hash

    # transaction index
    attr_accessor :transaction_index

    # from address
    attr_accessor :from

    # to address
    attr_accessor :to

    # cumulativeGasUsed
    attr_accessor :cumulative_gas_used

    # gas Used
    attr_accessor :gas_used

    # address of contract
    attr_accessor :contract_address

    # expected
    attr_accessor :excepted

    # logs
    attr_accessor :log

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'block_hash' => :'blockHash',
        :'block_number' => :'blockNumber',
        :'transaction_hash' => :'transactionHash',
        :'transaction_index' => :'transactionIndex',
        :'from' => :'from',
        :'to' => :'to',
        :'cumulative_gas_used' => :'cumulativeGasUsed',
        :'gas_used' => :'gasUsed',
        :'contract_address' => :'contractAddress',
        :'excepted' => :'excepted',
        :'log' => :'log'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'block_hash' => :'Object',
        :'block_number' => :'Object',
        :'transaction_hash' => :'Object',
        :'transaction_index' => :'Object',
        :'from' => :'Object',
        :'to' => :'Object',
        :'cumulative_gas_used' => :'Object',
        :'gas_used' => :'Object',
        :'contract_address' => :'Object',
        :'excepted' => :'Object',
        :'log' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::QtumIRawTransactionInfoReceipt` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::QtumIRawTransactionInfoReceipt`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'block_hash')
        self.block_hash = attributes[:'block_hash']
      end

      if attributes.key?(:'block_number')
        self.block_number = attributes[:'block_number']
      end

      if attributes.key?(:'transaction_hash')
        self.transaction_hash = attributes[:'transaction_hash']
      end

      if attributes.key?(:'transaction_index')
        self.transaction_index = attributes[:'transaction_index']
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'cumulative_gas_used')
        self.cumulative_gas_used = attributes[:'cumulative_gas_used']
      end

      if attributes.key?(:'gas_used')
        self.gas_used = attributes[:'gas_used']
      end

      if attributes.key?(:'contract_address')
        self.contract_address = attributes[:'contract_address']
      end

      if attributes.key?(:'excepted')
        self.excepted = attributes[:'excepted']
      end

      if attributes.key?(:'log')
        self.log = attributes[:'log']
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
          block_hash == o.block_hash &&
          block_number == o.block_number &&
          transaction_hash == o.transaction_hash &&
          transaction_index == o.transaction_index &&
          from == o.from &&
          to == o.to &&
          cumulative_gas_used == o.cumulative_gas_used &&
          gas_used == o.gas_used &&
          contract_address == o.contract_address &&
          excepted == o.excepted &&
          log == o.log
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [block_hash, block_number, transaction_hash, transaction_index, from, to, cumulative_gas_used, gas_used, contract_address, excepted, log].hash
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
