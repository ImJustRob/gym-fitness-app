class CommentsController < ApplicationController
        
    def index 
        @comments = Comment.all
        render :index
    end
    
    def create
        @comment = Comment.create(
        text: params[:text],
        exercise_id: params[:exercise_id],
        user_id: current_user.id,
        )
        render :show
    end
    
    def show
        @comment = Comment.find_by(id: params[:id])
        render :show
    end
    
    def update
        @comment = Comment.find_by(id: params[:id])
        @comment.update(
        text: params[:text] || @comment.text,
        exercise_id: params[:exercise_id] || @comment.exercise_id,
        user_id: params[:user_id] || @comment.user_id,
        )
        render :show
    end
    
    def destroy
        @comment = Comment.find_by(id: params[:id])
        @comment.destroy
        render json: { message: "comment removed successfully" }
    end
end
