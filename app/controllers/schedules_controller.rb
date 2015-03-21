class SchedulesController < ApplicationController
  	before_action :set_schedule, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show] 

	respond_to :html

	def index
		@schedules = Schedule.all
		respond_with(@schedules)
	end

	def show
		respond_with(@schedule)
	end

	def new
		@schedule = current_user.schedules.build
		respond_with(@schedule)
	end

	def edit
	end

	def create
		@schedule = current_user.schedules.build(schedule_params)
		@schedule.save
		respond_with(@schedule)
	end

	def update
		@schedule.update(schedule_params)
		respond_with(@schedule)
	end

	def destroy
		@schedule.destroy
		respond_with(@schedule)
	end

	private
		def set_schedule
			@schedule = Schedule.find(params[:id])
		end

		def schedule_params
			params.require(:schedule).permit(:gametime, :hteam, :ateam, :division_type)
		end
	end