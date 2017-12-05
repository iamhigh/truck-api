class Api::V1::TtController < ApplicationController
	 def index
	 	@p=Truck.all
    paginate json: @p, per_page: 25
  end
end
