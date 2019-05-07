class Api::V1::ReviewsController < ApplicationController
skip_before_action :authorized

  def index
    @reviews = Review.all
    render json: @reviews
  end

  def create
    @review = Review.create(review_params)
    render json: @review
  end

  private

  def review_params
    params.require(:review).permit(:title, :rating, :body, :user_id, :recipe_id)
  end

end
