class PhrsController < ApplicationController

	def new
		@patient = Patient.new
	end
	
	def edit
		@patient = params.find(params[:id])
	end

end
