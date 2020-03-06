=begin
#Bybit API

### REST API for the Bybit Exchange. Base URI: [https://api-testnet.bybit.com]  

OpenAPI spec version: 1.0.0
Contact: support@bybit.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'date'

module SwaggerClient
  # Get wallet balance response
  class WalletBalance
    attr_accessor :equity

    attr_accessor :available_balance

    attr_accessor :used_margin

    attr_accessor :order_margin

    attr_accessor :position_margin

    attr_accessor :occ_closing_fee

    attr_accessor :occ_funding_fee

    attr_accessor :wallet_balance

    attr_accessor :realised_pnl

    attr_accessor :unrealised_pnl

    attr_accessor :cum_realised_pnl

    attr_accessor :given_cash

    attr_accessor :service_cash

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'equity' => :'equity',
        :'available_balance' => :'available_balance',
        :'used_margin' => :'used_margin',
        :'order_margin' => :'order_margin',
        :'position_margin' => :'position_margin',
        :'occ_closing_fee' => :'occ_closing_fee',
        :'occ_funding_fee' => :'occ_funding_fee',
        :'wallet_balance' => :'wallet_balance',
        :'realised_pnl' => :'realised_pnl',
        :'unrealised_pnl' => :'unrealised_pnl',
        :'cum_realised_pnl' => :'cum_realised_pnl',
        :'given_cash' => :'given_cash',
        :'service_cash' => :'service_cash'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'equity' => :'Float',
        :'available_balance' => :'Float',
        :'used_margin' => :'Float',
        :'order_margin' => :'Float',
        :'position_margin' => :'Float',
        :'occ_closing_fee' => :'Float',
        :'occ_funding_fee' => :'Float',
        :'wallet_balance' => :'Float',
        :'realised_pnl' => :'Float',
        :'unrealised_pnl' => :'Float',
        :'cum_realised_pnl' => :'Float',
        :'given_cash' => :'Float',
        :'service_cash' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'equity')
        self.equity = attributes[:'equity']
      end

      if attributes.has_key?(:'available_balance')
        self.available_balance = attributes[:'available_balance']
      end

      if attributes.has_key?(:'used_margin')
        self.used_margin = attributes[:'used_margin']
      end

      if attributes.has_key?(:'order_margin')
        self.order_margin = attributes[:'order_margin']
      end

      if attributes.has_key?(:'position_margin')
        self.position_margin = attributes[:'position_margin']
      end

      if attributes.has_key?(:'occ_closing_fee')
        self.occ_closing_fee = attributes[:'occ_closing_fee']
      end

      if attributes.has_key?(:'occ_funding_fee')
        self.occ_funding_fee = attributes[:'occ_funding_fee']
      end

      if attributes.has_key?(:'wallet_balance')
        self.wallet_balance = attributes[:'wallet_balance']
      end

      if attributes.has_key?(:'realised_pnl')
        self.realised_pnl = attributes[:'realised_pnl']
      end

      if attributes.has_key?(:'unrealised_pnl')
        self.unrealised_pnl = attributes[:'unrealised_pnl']
      end

      if attributes.has_key?(:'cum_realised_pnl')
        self.cum_realised_pnl = attributes[:'cum_realised_pnl']
      end

      if attributes.has_key?(:'given_cash')
        self.given_cash = attributes[:'given_cash']
      end

      if attributes.has_key?(:'service_cash')
        self.service_cash = attributes[:'service_cash']
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
          equity == o.equity &&
          available_balance == o.available_balance &&
          used_margin == o.used_margin &&
          order_margin == o.order_margin &&
          position_margin == o.position_margin &&
          occ_closing_fee == o.occ_closing_fee &&
          occ_funding_fee == o.occ_funding_fee &&
          wallet_balance == o.wallet_balance &&
          realised_pnl == o.realised_pnl &&
          unrealised_pnl == o.unrealised_pnl &&
          cum_realised_pnl == o.cum_realised_pnl &&
          given_cash == o.given_cash &&
          service_cash == o.service_cash
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [equity, available_balance, used_margin, order_margin, position_margin, occ_closing_fee, occ_funding_fee, wallet_balance, realised_pnl, unrealised_pnl, cum_realised_pnl, given_cash, service_cash].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
      when :BOOLEAN
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
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
    end
  end
end