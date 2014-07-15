def pmu_format!(race_array)
#TODO: modify the given array so that it is PMU-consistent
  i = 0
  race_array.map! do |x|
    i = race_array.index(x) + 1
    "#{i}-#{x}!"
  end
  race_array.reverse!
end

pmu_format!(["horse1","horse2","horse3"])