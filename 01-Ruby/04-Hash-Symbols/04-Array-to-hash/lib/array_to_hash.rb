def array_to_hash(array)
  #TODO: implement the method :)

  hash = {}

  array.each_with_index do |value, index|
    key = index
    key = yield(index) if block_given?

    hash[key] = value
  end

  hash
end

array_to_hash(["a", "b", "c"]) { |index| "key#{index}" }
