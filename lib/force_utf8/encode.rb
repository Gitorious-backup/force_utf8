module ForceUtf8
  module Encode
    def encode(string)
      return unless string
      string = string.dup
      encode!(string)
      string
    end

    def encode!(string)
      return unless string

      string.force_encoding("UTF-8")

      unless string.valid_encoding?
        new_chars = string.chars.map { |c| c.valid_encoding? ? c : '?' }.join
        string.replace(new_chars)
      end
    end

    extend self
  end
end
