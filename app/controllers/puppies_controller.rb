class PuppiesController < ApplicationController
	#responders gem
	respond_to :html
	before_action :find_puppy, except: [:index, :new, :create]

	def index
		@puppies = Puppy.all
		respond_with @puppies
	end

	def show
		#puppy.find loads puppy of a particular id
		respond_with @puppy
	end

	def create
		@puppy = Puppy.create(puppy_params)
		respond_with @puppy
	end

	def new
		@puppy = Puppy.new
	end

	def edit
		respond_with @puppy
	end

	def update
		@puppy.update(puppy_params)
		respond_with @puppy
	end

	def destroy
		@puppy = Puppy.find(params[:id])
		@puppy.destroy
		respond_with @puppy
	end

	private
	def puppy_params
		params.require(:puppy).permit(:owner, :description, :color)
	end

	def find_puppy
		@puppy = Puppy.find(params[:id])
	end

end
