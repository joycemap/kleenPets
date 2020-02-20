  class ListingsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
   before_action :set_listing, only: [:show, :edit, :update, :destroy]
   #Route '/all' listings#index
  # GET /listings
  # GET /listings.json
def landingpage
    if user_signed_in?
    redirect_to '/all'
else
    return
      end
end
def search
    @search_results_listings = Listing.search_by_listings(params[:query])
end

  def index
    if  params[:home_service]
      @home_service_params = params[:home_service]
      @listings = Listing.where(home_service: true)
    else
      @listings = Listing.all
    end
  end




  # GET /listings/1
  # GET /listings/1.json
  def show
    @listing = Listing.find(params[:id])
    # this line ensures that the you'll only see the reviews for the selected listings, you won't see all reviews of all listings
    @reviews = @listing.reviews
  end
  # GET /listings/new
  def new
    @listing = Listing.new
  end
  # GET /listings/1/edit
  def edit
    @listing = Listing.find(params[:id])
    if @listing.user == current_user
      return
    else
      redirect_to @listing, notice: 'This listing cannot be edited. Please contact the owner of this listing.'
    end
  end
  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    @listing = Listing.find(params[:id])
    if @listing.user == current_user
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end
  end
  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing = Listing.find(params[:id])
    if @listing.user == current_user
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully deleteed.' }
      format.json { head :no_content }
    end
  else
    redirect_to @listing, notice: 'This Listing cannot be deleted. Please contact the owner of this listing. '
  end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def listing_params
      params.require(:listing).permit(:name, :phone, :address, :postal_code, :email, :description, :price, :image_url, :home_service, :aggressive_pets_accepted, :query, :user_id)
    end
  end