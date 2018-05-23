require 'pry-byebug'
class ReviewsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @review = current_user.reviews.new(review_params)
    @review.post = @post
    if @review.save
      respond_to do |format|
        format.html { redirect_to post_path(@post) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'post/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :user_id)
  end
end
