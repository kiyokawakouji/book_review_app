class ReviewsController < ApplicationController
 def index
  @reviews = Review.all
 end

 def show
  @review = Review.find(params[:id])
 end

 def new
  @review = Review.new
 end

 def edit
  @review = Review.find(params[:id])
 end

 def create
  review = Review.new(review_params)
  review.save!
  redirect_to reviews_url, notice: "書評「#{review.title}」を投稿しました"
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
