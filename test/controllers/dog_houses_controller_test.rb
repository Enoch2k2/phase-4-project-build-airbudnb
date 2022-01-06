require "test_helper"

class DogHousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog_house = dog_houses(:one)
  end

  test "should get index" do
    get dog_houses_url, as: :json
    assert_response :success
  end

  test "should create dog_house" do
    assert_difference('DogHouse.count') do
      post dog_houses_url, params: { dog_house: { address: @dog_house.address, image_url: @dog_house.image_url, short_description: @dog_house.short_description, state: @dog_house.state, zipcode: @dog_house.zipcode } }, as: :json
    end

    assert_response 201
  end

  test "should show dog_house" do
    get dog_house_url(@dog_house), as: :json
    assert_response :success
  end

  test "should update dog_house" do
    patch dog_house_url(@dog_house), params: { dog_house: { address: @dog_house.address, image_url: @dog_house.image_url, short_description: @dog_house.short_description, state: @dog_house.state, zipcode: @dog_house.zipcode } }, as: :json
    assert_response 200
  end

  test "should destroy dog_house" do
    assert_difference('DogHouse.count', -1) do
      delete dog_house_url(@dog_house), as: :json
    end

    assert_response 204
  end
end
