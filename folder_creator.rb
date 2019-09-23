require 'fileutils'

students = {"00000000" => "Reed Simmons", "00000001" => "Kyle Sampers", "00000002" => "Lance Taylor", "00000003" => "Ryan Torver"}


def folders(students)
  students.each { |key, value|
    Dir.mkdir "#{value} #{key}"
    FileUtils.cp 'test.txt', "#{value} #{key}/test.txt"
  }
end

p folders(students)