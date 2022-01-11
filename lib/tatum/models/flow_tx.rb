=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'date'

module Tatum
  class FlowTx
    # Id of the block
    attr_accessor :reference_block_id

    # Script to execute in the transaction
    attr_accessor :script

    # Args to the transaction
    attr_accessor :args

    # Gas limit for the transaction
    attr_accessor :gas_limit

    attr_accessor :proposal_key

    # Address from which the assets and fees were debited
    attr_accessor :payer

    # Array of payload signatures.
    attr_accessor :payload_signatures

    # Array of envelope signatures.
    attr_accessor :envelope_signatures

    # Status of the transaction
    attr_accessor :status

    # Status cofe of the transaction
    attr_accessor :status_code

    attr_accessor :error_message

    attr_accessor :events

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'reference_block_id' => :'referenceBlockId',
        :'script' => :'script',
        :'args' => :'args',
        :'gas_limit' => :'gasLimit',
        :'proposal_key' => :'proposalKey',
        :'payer' => :'payer',
        :'payload_signatures' => :'payloadSignatures',
        :'envelope_signatures' => :'envelopeSignatures',
        :'status' => :'status',
        :'status_code' => :'statusCode',
        :'error_message' => :'errorMessage',
        :'events' => :'events'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'reference_block_id' => :'Object',
        :'script' => :'Object',
        :'args' => :'Object',
        :'gas_limit' => :'Object',
        :'proposal_key' => :'Object',
        :'payer' => :'Object',
        :'payload_signatures' => :'Object',
        :'envelope_signatures' => :'Object',
        :'status' => :'Object',
        :'status_code' => :'Object',
        :'error_message' => :'Object',
        :'events' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Tatum::FlowTx` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Tatum::FlowTx`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'reference_block_id')
        self.reference_block_id = attributes[:'reference_block_id']
      end

      if attributes.key?(:'script')
        self.script = attributes[:'script']
      end

      if attributes.key?(:'args')
        if (value = attributes[:'args']).is_a?(Array)
          self.args = value
        end
      end

      if attributes.key?(:'gas_limit')
        self.gas_limit = attributes[:'gas_limit']
      end

      if attributes.key?(:'proposal_key')
        self.proposal_key = attributes[:'proposal_key']
      end

      if attributes.key?(:'payer')
        self.payer = attributes[:'payer']
      end

      if attributes.key?(:'payload_signatures')
        if (value = attributes[:'payload_signatures']).is_a?(Array)
          self.payload_signatures = value
        end
      end

      if attributes.key?(:'envelope_signatures')
        if (value = attributes[:'envelope_signatures']).is_a?(Array)
          self.envelope_signatures = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'status_code')
        self.status_code = attributes[:'status_code']
      end

      if attributes.key?(:'error_message')
        self.error_message = attributes[:'error_message']
      end

      if attributes.key?(:'events')
        if (value = attributes[:'events']).is_a?(Array)
          self.events = value
        end
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
          reference_block_id == o.reference_block_id &&
          script == o.script &&
          args == o.args &&
          gas_limit == o.gas_limit &&
          proposal_key == o.proposal_key &&
          payer == o.payer &&
          payload_signatures == o.payload_signatures &&
          envelope_signatures == o.envelope_signatures &&
          status == o.status &&
          status_code == o.status_code &&
          error_message == o.error_message &&
          events == o.events
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [reference_block_id, script, args, gas_limit, proposal_key, payer, payload_signatures, envelope_signatures, status, status_code, error_message, events].hash
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