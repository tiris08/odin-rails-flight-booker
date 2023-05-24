class FlightsController < ApplicationController
  def index
    @dates = Flight.order(:start).pluck(:start).map { |a| a.strftime("%Y-%m-%d")}.uniq

    if params.present?
      @flights = Flight.order(:start)
                       .where(from_airport_id: params[:from_airport_id])
                       .where(to_airport_id: params[:to_airport_id])
                       .where("DATE(start) >= ? AND DATE(start) <= ?", params[:start], params[:start])
    end 
  end
end
