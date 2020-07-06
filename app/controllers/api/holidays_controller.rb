class Api::HolidaysController < ApplicationController

def index
  # render :json => {message: "hellow from index holidays controller"}
  @holidays = Holiday.all
  render "index.json.jb"
end

def create
  @holiday = Holiday.new(name: params[:name], date: params[:date], year_found: params[:year_found])
  @holiday.save
  render "show.json.jb"
end


def show
  @holiday = Holiday.find_by(id: params[:id])
  render "show.json.jb"
end

def update
  @holiday = Holiday.find_by(id: params[:id])
  @holiday.name = params[:name] || @holiday.name
  @holiday.date = params[:date] || @holiday.date
  @holiday.year_found = params[:year_found] || @holiday.year_found
  @holiday.save
  render "show.json.jb"
end

def destroy
  @holiday = Holiday.find_by(id: params[:id])
  @holiday.destroy
  render :json => {message: "Successfully Deleted: #{@holiday.name} "}
end


end
