# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_key = ""
  name_hash.each do |key, value|
    if value < (value[0] && value[1])
      min_key << key
    elsif value < (value[1] && value[2])
      min_key << key
    elsif value < (value[0] && value[2])
      min_key << key
    else
      return nil
  end
  return min_key
end
