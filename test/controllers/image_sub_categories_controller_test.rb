require 'test_helper'

class ImageSubCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_sub_category = image_sub_categories(:one)
  end

  test "should get index" do
    get image_sub_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_image_sub_category_url
    assert_response :success
  end

  test "should create image_sub_category" do
    assert_difference('ImageSubCategory.count') do
      post image_sub_categories_url, params: { image_sub_category: {  } }
    end

    assert_redirected_to image_sub_category_url(ImageSubCategory.last)
  end

  test "should show image_sub_category" do
    get image_sub_category_url(@image_sub_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_image_sub_category_url(@image_sub_category)
    assert_response :success
  end

  test "should update image_sub_category" do
    patch image_sub_category_url(@image_sub_category), params: { image_sub_category: {  } }
    assert_redirected_to image_sub_category_url(@image_sub_category)
  end

  test "should destroy image_sub_category" do
    assert_difference('ImageSubCategory.count', -1) do
      delete image_sub_category_url(@image_sub_category)
    end

    assert_redirected_to image_sub_categories_url
  end
end
