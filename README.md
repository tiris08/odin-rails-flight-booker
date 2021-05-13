# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

   <% @booking.passengers.each_with_index do |passenger, i| %>
    <%= booking_f.fields_for passenger, index: passenger.id do |passenger_f| %>
      <%= "Passanger №#{i+1}"<br> %>
      <%= passenger_f.label :name %>
      <%= passenger_f.text_field :name %><br>
      <%= passenger_f.label :email %>
      <%= passenger_f.text_field :email %><br>
      <% end %>
   <% end %> 