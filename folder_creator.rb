require 'fileutils'

students = {"00000000" => "Reed Simmons", "00000001" => "Kyle Sampers", "00000002" => "Lance Taylor", "00000003" => "Ryan Torver"}


def folders(students)
  students.each { |id, name|
    name = name.split(" ")
    first_name = name[0]
    last_name = name[-1]
    Dir.mkdir "#{last_name}-#{first_name}-#{id}"
    FileUtils.cp 'test.txt', "#{last_name}-#{first_name}-#{id}/#{last_name}_#{first_name}_#{id}_UG_plan_of_study.txt"
  }
end

p folders(students)