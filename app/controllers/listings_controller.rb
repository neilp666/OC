class ListingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  respond_to :html
  def listing
    @listing = Listing.new
  end
  
  def index
    @listings = Listing.all
    respond_with(@listings)
  end

  def show
    respond_to do |format|
      format.html { respond_with(@listing) }
      format.js {}
    end
    
  end

  def new
    @listing = Listing.new
    respond_with(@listing)
  end

  def edit
  end

  def create
    @listing = current_user.listings.new(listing_params)
    @listing.save
    respond_with(@listing)
  end

  def update
    @listing.update(listing_params)
    respond_with(@listing)
  end

  def destroy
    @listing.destroy
    respond_with(@listing)
  end

  private
    def set_listing
      @listing = Listing.find(params[:id])
    end

    def listing_params
      params.require(:listing).permit(:title, :time, :date, :seats, :venue_name, :location, :other_info, :projector, :cables, :laptops, :seating, :blinds, :lighting, :camcorder, :catering, :toilets, :fire, :internet, :price, :image)
    end
end
