require 'test_helper'

class VideoSubCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_sub_category = video_sub_categories(:one)
  end

  test "should get index" do
    get video_sub_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_video_sub_category_url
    assert_response :success
  end

  test "should create video_sub_category" do
    assert_difference('VideoSubCategory.count') do
      post video_sub_categories_url, params: { video_sub_category: {  } }
    end

    assert_redirected_to video_sub_category_url(VideoSubCategory.last)
  end

  test "should show video_sub_category" do
    get video_sub_category_url(@video_sub_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_sub_category_url(@video_sub_category)
    assert_response :success
  end

  test "should update video_sub_category" do
    patch video_sub_category_url(@video_sub_category), params: { video_sub_category: {  } }
    assert_redirected_to video_sub_category_url(@video_sub_category)
  end

  test "should destroy video_sub_category" do
    assert_difference('VideoSubCategory.count', -1) do
      delete video_sub_category_url(@video_sub_category)
    end

    assert_redirected_to video_sub_categories_url
  end
end
