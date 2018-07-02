require 'test_helper'

class FacilitiesRentsRelationshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @facilities_rents_relationship = facilities_rents_relationships(:one)
  end

  test "should get index" do
    get facilities_rents_relationships_url
    assert_response :success
  end

  test "should get new" do
    get new_facilities_rents_relationship_url
    assert_response :success
  end

  test "should create facilities_rents_relationship" do
    assert_difference('FacilitiesRentsRelationship.count') do
      post facilities_rents_relationships_url, params: { facilities_rents_relationship: {  } }
    end

    assert_redirected_to facilities_rents_relationship_url(FacilitiesRentsRelationship.last)
  end

  test "should show facilities_rents_relationship" do
    get facilities_rents_relationship_url(@facilities_rents_relationship)
    assert_response :success
  end

  test "should get edit" do
    get edit_facilities_rents_relationship_url(@facilities_rents_relationship)
    assert_response :success
  end

  test "should update facilities_rents_relationship" do
    patch facilities_rents_relationship_url(@facilities_rents_relationship), params: { facilities_rents_relationship: {  } }
    assert_redirected_to facilities_rents_relationship_url(@facilities_rents_relationship)
  end

  test "should destroy facilities_rents_relationship" do
    assert_difference('FacilitiesRentsRelationship.count', -1) do
      delete facilities_rents_relationship_url(@facilities_rents_relationship)
    end

    assert_redirected_to facilities_rents_relationships_url
  end
end
