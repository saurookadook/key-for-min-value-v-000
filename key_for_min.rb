# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.block_given?
    hash_keys = []
    hash_values = []
    name_hash.each do |key, value|
      hash_keys << key
      hash_values << value
    end
    if hash_values[0] < (hash_values[1] && hash_values[2])
      return hash_keys[0]
    elsif hash_values[1] < (hash_values[0] && hash_values[2])
      return hash_keys[1]
    elsif hash_values[2] < (hash_values[0] && hash_values[1])
      return hash_keys[2]
    else
      return nil
    end
  else
    return nil
  end
end

# min_key = ""
# hash_values = []
# name_hash.each do |key, value|
#   hash_values << value
#   hash_values.each do |stored_value|
#       if stored_value < (stored_value[0] && stored_value[1])
#         min_key << key
#       elsif stored_value < (stored_value[1] && stored_value[2])
#         min_key << key
#       elsif stored_value < (stored_value[0] && stored_value[2])
#         min_key << key
#       else
#       return nil
#     end
#   end
# end
# return min_key
