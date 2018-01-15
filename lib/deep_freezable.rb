module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
      array_or_hash.each {|v| v.freeze }
    when Hash
      array_or_hash.each {|k, v| k.freeze; v.freeze }
    end
    array_or_hash.freeze
  end
end
