class ReviewsController < ApplicationController
  def new
    @flat = Flat.find(params[:flat_id])
    @review = Review.new
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @review = Review.new(review_params)
    @review.flat_id = @flat.id

    if @review.save
      redirect_to flat_path(@flat)
    else
       render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to flat_path(@review.flat_id), status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
