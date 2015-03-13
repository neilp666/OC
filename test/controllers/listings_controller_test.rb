require 'test_helper'

class ListingsControllerTest < ActionController::TestCase
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post :create, listing: { blinds: @listing.blinds, cables: @listing.cables, camcorder: @listing.camcorder, catering: @listing.catering, date: @listing.date, fire: @listing.fire, internet: @listing.internet, laptops: @listing.laptops, lighting: @listing.lighting, location: @listing.location, other_info: @listing.other_info, projector: @listing.projector, seating: @listing.seating, seats: @listing.seats, time: @listing.time, title: @listing.title, toilets: @listing.toilets, venue_name: @listing.venue_name }
    end

    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should show listing" do
    get :show, id: @listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listing
    assert_response :success
  end

  test "should update listing" do
    patch :update, id: @listing, listing: { blinds: @listing.blinds, cables: @listing.cables, camcorder: @listing.camcorder, catering: @listing.catering, date: @listing.date, fire: @listing.fire, internet: @listing.internet, laptops: @listing.laptops, lighting: @listing.lighting, location: @listing.location, other_info: @listing.other_info, projector: @listing.projector, seating: @listing.seating, seats: @listing.seats, time: @listing.time, title: @listing.title, toilets: @listing.toilets, venue_name: @listing.venue_name }
    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete :destroy, id: @listing
    end

    assert_redirected_to listings_path
  end
end
