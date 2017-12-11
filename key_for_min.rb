# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_key = ""
  hash_values = []
  name_hash.each do |key, value|
    hash_values << value
    hash_values.each do |stored_value|
        if stored_value < (stored_value[0] && stored_value[1])
          min_key << key
        elsif stored_value < (stored_value[1] && stored_value[2])
          min_key << key
        elsif stored_value < (stored_value[0] && stored_value[2])
          min_key << key
        else
        return nil
      end
    end
  end
  return min_key
end
