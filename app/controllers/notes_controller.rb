class NotesController < ApplicationController

    def index 
        @notes = Note.all
        render :index
    end
    
    def create
        @note = Note.create(
        text: params[:text],
        routine_id: params[:routine_id],
        user_id: current_user.id,
        )
        render :show
    end
    
    def show
        @note = Note.find_by(id: params[:id])
        render :show
    end
    
    def update
        @note = Note.find_by(id: params[:id])
        @note.update(
        text: params[:text] || @note.text,
        routine_id: params[:routine_id] || @note.exercise_id,
        user_id: params[:user_id] || @note.user_id,
        )
        render :show
    end
    
    def destroy
        @note = Note.find_by(id: params[:id])
        @note.destroy
        render json: { message: "note removed successfully" }
    end

end
