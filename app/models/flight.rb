class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"

  def start_date_formatted
    start.strftime("%b %d, %Y")
  end
end
