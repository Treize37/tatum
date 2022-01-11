=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'date'

module SwaggerClient
  class BchBlock
    # Hash of block.
    attr_accessor :hash

    # Block size.
    attr_accessor :size

    # The number of blocks preceding a particular block on a block chain.
    attr_accessor :height

    # Block version.
    attr_accessor :version

    # The root node of a merkle tree, a descendant of all the hashed pairs in the tree.
    attr_accessor :merkleroot

    # List of transactions present in the block.
    attr_accessor :tx

    # Time of the block.
    attr_accessor :time

    # Arbitrary number that is used in Bitcoin's proof of work consensus algorithm.
    attr_accessor :nonce

    attr_accessor :difficulty

    # Number of blocks mined after this block.
    attr_accessor :confirmations

    # Hash of the previous block.
    attr_accessor :previousblockhash

    # Hash of the next block.
    attr_accessor :nextblockhash

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'hash' => :'hash',
        :'size' => :'size',
        :'height' => :'height',
        :'version' => :'version',
        :'merkleroot' => :'merkleroot',
        :'tx' => :'tx',
        :'time' => :'time',
        :'nonce' => :'nonce',
        :'difficulty' => :'difficulty',
        :'confirmations' => :'confirmations',
        :'previousblockhash' => :'previousblockhash',
        :'nextblockhash' => :'nextblockhash'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'hash' => :'Object',
        :'size' => :'Object',
        :'height' => :'Object',
        :'version' => :'Object',
        :'merkleroot' => :'Object',
        :'tx' => :'Object',
        :'time' => :'Object',
        :'nonce' => :'Object',
        :'difficulty' => :'Object',
        :'confirmations' => :'Object',
        :'previousblockhash' => :'Object',
        :'nextblockhash' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::BchBlock` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::BchBlock`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'hash')
        self.hash = attributes[:'hash']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'merkleroot')
        self.merkleroot = attributes[:'merkleroot']
      end

      if attributes.key?(:'tx')
        if (value = attributes[:'tx']).is_a?(Array)
          self.tx = value
        end
      end

      if attributes.key?(:'time')
        self.time = attributes[:'time']
      end

      if attributes.key?(:'nonce')
        self.nonce = attributes[:'nonce']
      end

      if attributes.key?(:'difficulty')
        self.difficulty = attributes[:'difficulty']
      end

      if attributes.key?(:'confirmations')
        self.confirmations = attributes[:'confirmations']
      end

      if attributes.key?(:'previousblockhash')
        self.previousblockhash = attributes[:'previousblockhash']
      end

      if attributes.key?(:'nextblockhash')
        self.nextblockhash = attributes[:'nextblockhash']
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
          hash == o.hash &&
          size == o.size &&
          height == o.height &&
          version == o.version &&
          merkleroot == o.merkleroot &&
          tx == o.tx &&
          time == o.time &&
          nonce == o.nonce &&
          difficulty == o.difficulty &&
          confirmations == o.confirmations &&
          previousblockhash == o.previousblockhash &&
          nextblockhash == o.nextblockhash
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [hash, size, height, version, merkleroot, tx, time, nonce, difficulty, confirmations, previousblockhash, nextblockhash].hash
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
