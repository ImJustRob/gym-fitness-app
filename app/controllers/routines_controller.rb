class RoutinesController < ApplicationController
  def index
      @routines = Routine.all
      render :index
  end
  
  def create
    @routine = Routine.create(
      user_id: current_user.id,
      exercise_id: params[:exercise_id],
      reps: params[:reps],
      sets: params[:sets],
      )
      render :show
  end

  def show
    @routine = Routine.find_by(id: params[:id])
    render :show
  end

  def update
    @routine = Routine.find_by(id: params[:id])
    @routine.update(
      user_id: params[:user_id] || @routine.user_id,
      exercise_id: params[:exercise_id] || @routine.exercise_id,
      reps: params[:reps] || @routine.reps,
      sets: params[:sets] || @routine.sets,
    )
    render :show
  end

  def destroy
    @routine = Routine.find_by(id: params[:id])
    @routine.destroy
    render json: { message: "routine removed successfully" }
  end
end