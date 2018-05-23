class ReviewsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @review = Review.new(review_params)
    @review.post = @post
    if @review.save
      redirect_to restaurant_path(@post)
    else
      render 'posts/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
