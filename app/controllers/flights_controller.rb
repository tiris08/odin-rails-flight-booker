class FlightsController < ApplicationController
  
  def index
    @flights = Flight.all
    if !params.empty?
      @flights_from = Flight.where("from_airport_id = ?", params[:from_airport_id]).where("to_airport_id = ?", params[:to_airport_id]  )
    end 
  end
  

end
