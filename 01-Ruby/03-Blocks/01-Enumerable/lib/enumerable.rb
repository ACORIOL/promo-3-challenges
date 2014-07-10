def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
  sum = 0
  array.each_with_index { |x, i| sum += x if i % 2 == 1 }
  sum
end


def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  array.select { |element| element.even? }
end


def short_words(array, max_length)
  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
    array.reject { |word| word.length > max_length }
end

short_words(["jlfdsqbjb", "jlhgblsqjh", "ljkbsdqhj", "ghk", "hlj"], 4)

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  array.find { |x| x < limit }
end

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array.map { |word| word + "!"}
end
add_bang(["arg", "agd", "fgdq"])

def product(array)
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce
  array.reduce(:*)
end

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
  new_array = []
  array.each_slice(2) do |pairs|
    p pairs
    new_array << pairs.sort
  end
   return new_array
end

sorted_pairs(["hjlb", "jmhjkmh", "jkmn", "hjlj"])