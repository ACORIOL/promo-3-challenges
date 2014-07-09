require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  students << name if name != ""
  # TODO: Add the name we just gotto the students array

end while name != ""

# TODO: Call `wagon_sort` method and display the sorted student list


#recuperer la liste des étudiants (wagon_sort)


students = wagon_sort(students)

puts "Congratulations! Your Wagon has #{students.length} students:"
puts  "- #{students[0..(students.count-2)].join(", ")} and #{students.last}"