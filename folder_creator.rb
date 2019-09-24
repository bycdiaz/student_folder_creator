require 'fileutils'
require 'csv'

admit_201915 = []
CSV.foreach('data/STU-Eligible_To_Register-Fall-92419-edited.csv', headers: true) do |header|
  if header["Term Code Admit"] == "201915"
    puts header["Student"]
    puts header["Univ Id"]
    puts header["Term Code Admit"]
  end
end

# students = {"00000000" => "Reed Simmons", "00000001" => "Kyle Sampers", "00000002" => "Lance Taylor", "00000003" => "Ryan Torver"}


# def folders(students)
#   students.each { |id, name|
#     name = name.split(" ")
#     first_name = name[0]
#     last_name = name[-1]
#     Dir.mkdir "#{last_name}-#{first_name}-#{id}"
#     FileUtils.cp 'master-2018+ plan of study.xlsx', "#{last_name}-#{first_name}-#{id}/#{last_name}_#{first_name}_#{id}_UG_plan_of_study.txt"
#   }
# end

# p folders(students)