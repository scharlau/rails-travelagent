class TravelagentController < ApplicationController
  def index
    @cruises = Cruise.all
    @cruise_names = []
    @cabins_available = []
    @cruises.each do |cruise|
      @cruise_names << cruise.name
      @cruise_cabins = Cabin.where(["ship_id = ?", cruise.ship_id]).count('id')
      @cabins_available << @cruise_cabins
    end
    @reservation_groups = Reservation.all.group('cruise_id').count('id')
    @reservations = Reservation.all
    @bookings = []
    #@reservations.each do |reservation|
    #  @bookings << 1
    #end
    
    @reservation_groups.each do |group|
      @bookings << group.count
    end
    
  end
end
