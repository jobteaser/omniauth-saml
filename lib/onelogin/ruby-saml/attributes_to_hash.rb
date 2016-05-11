require 'onelogin/ruby-saml/attributes'

module OneLogin
  module RubySaml
    # Retro-compatibility for the 0.8.2 to_hash method
    module AttributesToHash
      def to_hash
        all.map { |k, v| [k, v.is_a?(Array) ? v.first : v] }.to_h
      end
    end
  end
end

OneLogin::RubySaml::Attributes.send(:include, OneLogin::RubySaml::AttributesToHash)
