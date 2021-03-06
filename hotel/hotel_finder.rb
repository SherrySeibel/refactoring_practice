require "csv"

class HotelFinder
  def initialize(file_name)
    @file_name = file_name
  end

  def display_hotel_names
    CSV.foreach(@file_name, headers: true) do |row|
      puts row["Hotel"]
    end
  end
end

hotel_finder = HotelFinder.new("hotels.csv")
hotel_finder.display_hotel_names
