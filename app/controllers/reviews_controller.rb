class ReviewsController < ApplicationController
 #before_action :authenticate_user!

 def index
  @reviews = Review.all
 end

 def new
  @review = Review.new
 end

 def create
  @review = Review.new(review_params)
  @review.user_id = current_user.id  
  
  if @review.save
   redirect_to @review, notice: "書評「#{@review.title}」を投稿しました"
  else
   render :new
  end
 end

 def show
  @review = Review.find(params[:id])
 end

 def edit
  @review = Review.find(params[:id])
 end


 def update
  review = Review.find(params[:id])
  review.update!(review_params)
  redirect_to reviews_url, notice: "書評「#{review.title}」を更新しました。"
 end

 def destroy
  review = Review.find(params[:id])
  review.destroy
  redirect_to reviews_url, notice: "書評「#{review.title}」を削除しました。"
 end

private

 def review_params
  params.require(:review).permit(:title, :author, :description)
 end 
end
