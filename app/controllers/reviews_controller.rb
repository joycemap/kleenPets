class ReviewsController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def create
    @review = Review.new(review_params)

    @review.customer_id = current_customer.id
    puts "*******************************************"
        puts "*******************************************"

    puts "*******************************************"
    puts "*******************************************"
    puts "*******************************************"

    puts @review.inspect
    puts 'its here!!!!!'
    puts "*******************************************"
    puts "*******************************************"
    puts "*******************************************"
    puts "*******************************************"
    puts "*******************************************"
    puts "*******************************************"

    if @review.save
      redirect_to @review.listing
    else
      render plain: "You can't add any comment!"
    end
  end

  def edit
    @review = Review.find(params[:format])
    @listing = Listing.find(params[:id])
  end

  def update
    @review = Review.new(pin_params)
    @listing = @review.listing
    @review.customer_id = current_customer.id
    puts '*****************'
    puts '*****************'
    puts '*****************'
    puts @review.listing
    puts '*****************'
    puts '*****************'
    puts '*****************'
    if @review.update(review_params)
      redirect_to @review.listing
    else
      render plain: "You can't edit!"
    end

  def destroy
    @review = Review.find(params[:id])
    @listing = @review.listing
      if @review.customer == current_customer
        @review.destroy
        redirect_to @listing
      else
        render plain:"You can't delete review!"
      end
    end
  end


private

  def review_params
    params.require(:review).permit(:body, :listing_id)
  end

      # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

end