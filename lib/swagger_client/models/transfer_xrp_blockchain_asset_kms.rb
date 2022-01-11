=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'date'

module SwaggerClient
  class TransferXrpBlockchainAssetKMS
    # XRP account address. Must be the one used for generating deposit tags.
    attr_accessor :from_account

    # Blockchain address to send assets
    attr_accessor :to

    # Amount to be sent, in XRP.
    attr_accessor :amount

    # Identifier of the secret associated in signing application. Secret, or signature Id must be present.
    attr_accessor :signature_id

    # Fee to be paid, in XRP. If omitted, current fee will be calculated.
    attr_accessor :fee

    # Source tag of sender account, if any.
    attr_accessor :source_tag

    # Destination tag of recipient account, if any.
    attr_accessor :destination_tag

    # Blockchain address of the issuer of the assets to create trust line for.
    attr_accessor :issuer_account

    # Asset name. Must be 160bit HEX string, e.g. SHA1.
    attr_accessor :token

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'from_account' => :'fromAccount',
        :'to' => :'to',
        :'amount' => :'amount',
        :'signature_id' => :'signatureId',
        :'fee' => :'fee',
        :'source_tag' => :'sourceTag',
        :'destination_tag' => :'destinationTag',
        :'issuer_account' => :'issuerAccount',
        :'token' => :'token'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'from_account' => :'Object',
        :'to' => :'Object',
        :'amount' => :'Object',
        :'signature_id' => :'Object',
        :'fee' => :'Object',
        :'source_tag' => :'Object',
        :'destination_tag' => :'Object',
        :'issuer_account' => :'Object',
        :'token' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::TransferXrpBlockchainAssetKMS` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::TransferXrpBlockchainAssetKMS`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'from_account')
        self.from_account = attributes[:'from_account']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'signature_id')
        self.signature_id = attributes[:'signature_id']
      end

      if attributes.key?(:'fee')
        self.fee = attributes[:'fee']
      end

      if attributes.key?(:'source_tag')
        self.source_tag = attributes[:'source_tag']
      end

      if attributes.key?(:'destination_tag')
        self.destination_tag = attributes[:'destination_tag']
      end

      if attributes.key?(:'issuer_account')
        self.issuer_account = attributes[:'issuer_account']
      end

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @from_account.nil?
        invalid_properties.push('invalid value for "from_account", from_account cannot be nil.')
      end

      if @to.nil?
        invalid_properties.push('invalid value for "to", to cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @signature_id.nil?
        invalid_properties.push('invalid value for "signature_id", signature_id cannot be nil.')
      end

      if @issuer_account.nil?
        invalid_properties.push('invalid value for "issuer_account", issuer_account cannot be nil.')
      end

      if @token.nil?
        invalid_properties.push('invalid value for "token", token cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @from_account.nil?
      return false if @to.nil?
      return false if @amount.nil?
      return false if @signature_id.nil?
      return false if @issuer_account.nil?
      return false if @token.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          from_account == o.from_account &&
          to == o.to &&
          amount == o.amount &&
          signature_id == o.signature_id &&
          fee == o.fee &&
          source_tag == o.source_tag &&
          destination_tag == o.destination_tag &&
          issuer_account == o.issuer_account &&
          token == o.token
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [from_account, to, amount, signature_id, fee, source_tag, destination_tag, issuer_account, token].hash
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
