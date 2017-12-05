class TruckController < ApplicationController
	 protect_from_forgery with: :null_session
	def get_fields
		num = params[:Truck_Number]
		#@truck =Truck.new
		@truck = Truck.where("Truck_Number = ?",num)
	    render json: @truck
	end
	def add_truck
		@truck =Truck.new
		@truck.truck_number = params[:Truck_Number]
		@truck.Lat = params[:Lat]
		@truck.Log = params[:Log]
		if @truck.truck_number==nil 
			output = {'Message' => 'Please Enter Truck_Number'}.to_json
		elsif @truck.Lat == nil 
			output = {'Message' => 'Please Enter Lat'}.to_json
		elsif @truck.Log == nil 
			output = {'Message' => 'Please Enter Log'}.to_json
		else 
			@truck.save
			output = {'Message' => 'Truck Added'}.to_json
		end
		render json: output
	end
	def show_trucks
		@p=Truck.all
		@trucks=Truck.all.paginate(page: params[:page], per_page: 10)
  	 paginate json: @p, per_page: 10
  end 

end