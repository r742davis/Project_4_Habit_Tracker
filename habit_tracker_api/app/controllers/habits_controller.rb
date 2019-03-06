class HabitsController < ApplicationController

  #index route
  def index
    render json: Habit.all
  end

  #show route
  def show
    render json: Habit.find(params["id"])
  end
  
  #create route
  def create
    render json: Habit.create(params["habit"])
  end

  #delete route
  def delete
    render json: Habit.delete(params["id"])
  end

  #update route
  def update
    render json: Habit.update(params["id"], params["habit"])
  end

end
