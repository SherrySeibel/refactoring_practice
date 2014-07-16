require "csv"

class HotelFinder
  def initialize(hotel_database)
    @hotel_database = hotel_database
    @hotels = {}
  end

  def find_hotel
    display_hotel_name
  end

  private

  def display_hotel_name
    hotel_list = CSV.foreach(@hotel_database, headers: true) do |row|
      @hotels[row.fields[0]] = Hash[row.headers[1..-1]]
    end
  end

  puts @hotels
end

hotel_finder = HotelFinder.new("hotels.csv")
hotel_finder.find_hotel
