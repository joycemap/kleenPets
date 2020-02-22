class ReviewsController < ApplicationController
  before_action :authenticate_customer!

  def index
  end

  def show
  end

  def new
  end

  def create
    @review = Review.new(review_params)
    @review.customer_id = current_customer.id
    @review.listing_id = params[:id]
    if @review.save
      redirect_to @review.listing
    else
      render plain: "You can't add any comment!"
    end
  end

  def edit
    @listing = Listing.find(params[:id])
    @reviews = @listing.reviews
    @review = Review.find(params[:review_id])
    # render plain: params[:id] + params[:review_id]
  end

  def update
    # @listing = Listing.find(params[:id])
    # @reviews = @listing.reviews
    @review = Review.find(params[:review_id])
    if @review.customer_id == current_customer.id
       @review.update(review_params)
      redirect_to @review.listing
    else
      render plain: "You can't edit reviews!"
    end
  end


  def destroy
    @review = Review.find(params[:review_id])
    @listing = @review.listing
    @review = Review.find(params[:review_id])
      if @review.customer == current_customer
        @review.destroy
        redirect_to @listing
      else
        render plain:"You can't delete review!"
      end
  end

private
  def review_params
    params.require(:review).permit(:body, :listing_id)
  end
end