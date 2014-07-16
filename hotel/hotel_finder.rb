require "csv"

class HotelFinder
  def initialize(hotel_database)
    @hotel_database = hotel_database
  end

  def find_hotel
    display_hotel_name
  end

  private

  def display_hotel_name
    hotel_list = CSV.foreach(@hotel_database, headers: true) do |row|
      puts row["Hotel"]
    end
  end
end

hotel_finder = HotelFinder.new("hotels.csv")
hotel_finder.find_hotel
