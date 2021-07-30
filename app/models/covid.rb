class Covid < ApplicationRecord

  def self.load_csv_data
    file = File.open('tmp/CovidJunio.csv')
    file_data = file.readlines.map(&:chomp)
    # file_data = file.readlines.map do |f|
    #   f.chomp
    # end
    file_data.each_with_index do |row, index|
      next if index.zero?
      cols = row.split(",")
      Covid.create(day: "2020/06/#{cols[0]}", total_cases: cols[1], deceaseds: cols[2], actives: cols[3], new_cases: cols[4])
    end
  end

end
