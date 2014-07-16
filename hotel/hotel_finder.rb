require "csv"
# require "pp"

class HotelFinder
  def initialize(hotel_database)
    @hotel_database = hotel_database
    @hotels = {}
  end

  def find_hotel
    display_hotel_name
    # hotel_query
  end

  private

  def display_hotel_name
    hotel_list = CSV.foreach(@hotel_database, headers: true) do |row|
      puts row["Hotel"]
    end
  end

  # def hotel_query
  #   print "What property? > "
  #   user_query = gets.chomp
  #   @hotels.map { |hotel, info| hotel }
  #   # puts user_query
  # end
end

hotel_finder = HotelFinder.new("hotels.csv")
hotel_finder.find_hotel
