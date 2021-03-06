=begin
#Tatum API

## Authentication  <!-- ReDoc-Inject: <security-definitions> -->

OpenAPI spec version: 3.9.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'date'

module Tatum
  class XrpTx
    # The SHA-512 hash of the transaction
    attr_accessor :hash

    # The ledger index of the ledger that includes this transaction.
    attr_accessor :ledger_index

    # The unique address of the account that initiated the transaction.
    attr_accessor :account

    # Amount of transaction, in drops. 1 drop = 0.000001 XRP.
    attr_accessor :amount

    # Recipient account address.
    attr_accessor :destination

    # Integer amount of XRP, in drops, to be destroyed as a cost for distributing this transaction to the network. Some transaction types have different minimum requirements.
    attr_accessor :fee

    # Type of the transaction. XRp supports more than 18 transaction types. For the payment, Payment type is used.
    attr_accessor :transaction_type

    # Set of bit-flags for this transaction.
    attr_accessor :flags

    # Last ledger, in which this transaction could have occured.
    attr_accessor :last_ledger_sequence

    # The sequence number of the account sending the transaction. A transaction is only valid if the Sequence number is exactly 1 greater than the previous transaction from the same account.
    attr_accessor :sequence

    # Timestamp of the transaction, in Ripple epoch (946684800 seconds after Unix Epoch)
    attr_accessor :date

    # Ledger, in which transaction took place.
    attr_accessor :in_ledger

    attr_accessor :signing_pub_key

    attr_accessor :txn_signature

    attr_accessor :meta

    # Whether or not the transaction is included in a validated ledger. Any transaction not yet in a validated ledger is subject to change.
    attr_accessor :validated

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'hash' => :'hash',
        :'ledger_index' => :'ledger_index',
        :'account' => :'Account',
        :'amount' => :'Amount',
        :'destination' => :'Destination',
        :'fee' => :'Fee',
        :'transaction_type' => :'TransactionType',
        :'flags' => :'Flags',
        :'last_ledger_sequence' => :'LastLedgerSequence',
        :'sequence' => :'Sequence',
        :'date' => :'date',
        :'in_ledger' => :'inLedger',
        :'signing_pub_key' => :'SigningPubKey',
        :'txn_signature' => :'TxnSignature',
        :'meta' => :'meta',
        :'validated' => :'validated'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'hash' => :'Object',
        :'ledger_index' => :'Object',
        :'account' => :'Object',
        :'amount' => :'Object',
        :'destination' => :'Object',
        :'fee' => :'Object',
        :'transaction_type' => :'Object',
        :'flags' => :'Object',
        :'last_ledger_sequence' => :'Object',
        :'sequence' => :'Object',
        :'date' => :'Object',
        :'in_ledger' => :'Object',
        :'signing_pub_key' => :'Object',
        :'txn_signature' => :'Object',
        :'meta' => :'Object',
        :'validated' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Tatum::XrpTx` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Tatum::XrpTx`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'hash')
        self.hash = attributes[:'hash']
      end

      if attributes.key?(:'ledger_index')
        self.ledger_index = attributes[:'ledger_index']
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'destination')
        self.destination = attributes[:'destination']
      end

      if attributes.key?(:'fee')
        self.fee = attributes[:'fee']
      end

      if attributes.key?(:'transaction_type')
        self.transaction_type = attributes[:'transaction_type']
      end

      if attributes.key?(:'flags')
        self.flags = attributes[:'flags']
      end

      if attributes.key?(:'last_ledger_sequence')
        self.last_ledger_sequence = attributes[:'last_ledger_sequence']
      end

      if attributes.key?(:'sequence')
        self.sequence = attributes[:'sequence']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'in_ledger')
        self.in_ledger = attributes[:'in_ledger']
      end

      if attributes.key?(:'signing_pub_key')
        self.signing_pub_key = attributes[:'signing_pub_key']
      end

      if attributes.key?(:'txn_signature')
        self.txn_signature = attributes[:'txn_signature']
      end

      if attributes.key?(:'meta')
        self.meta = attributes[:'meta']
      end

      if attributes.key?(:'validated')
        self.validated = attributes[:'validated']
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
          ledger_index == o.ledger_index &&
          account == o.account &&
          amount == o.amount &&
          destination == o.destination &&
          fee == o.fee &&
          transaction_type == o.transaction_type &&
          flags == o.flags &&
          last_ledger_sequence == o.last_ledger_sequence &&
          sequence == o.sequence &&
          date == o.date &&
          in_ledger == o.in_ledger &&
          signing_pub_key == o.signing_pub_key &&
          txn_signature == o.txn_signature &&
          meta == o.meta &&
          validated == o.validated
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [hash, ledger_index, account, amount, destination, fee, transaction_type, flags, last_ledger_sequence, sequence, date, in_ledger, signing_pub_key, txn_signature, meta, validated].hash
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
