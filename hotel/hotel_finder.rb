require "csv"

class HotelFinder
  def initialize(file_name)
    @file_name = file_name
  end

  def find_hotels
    display_hotel_name
  end

  private

  def display_hotel_name
    CSV.foreach(@file_name, headers: true) do |row|
      puts row["Hotel"]
    end
  end
end

hotel_finder = HotelFinder.new("hotels.csv")
hotel_finder.find_hotel
