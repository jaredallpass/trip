require 'test_helper'

class MusicSubCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @music_sub_category = music_sub_categories(:one)
  end

  test "should get index" do
    get music_sub_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_music_sub_category_url
    assert_response :success
  end

  test "should create music_sub_category" do
    assert_difference('MusicSubCategory.count') do
      post music_sub_categories_url, params: { music_sub_category: {  } }
    end

    assert_redirected_to music_sub_category_url(MusicSubCategory.last)
  end

  test "should show music_sub_category" do
    get music_sub_category_url(@music_sub_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_music_sub_category_url(@music_sub_category)
    assert_response :success
  end

  test "should update music_sub_category" do
    patch music_sub_category_url(@music_sub_category), params: { music_sub_category: {  } }
    assert_redirected_to music_sub_category_url(@music_sub_category)
  end

  test "should destroy music_sub_category" do
    assert_difference('MusicSubCategory.count', -1) do
      delete music_sub_category_url(@music_sub_category)
    end

    assert_redirected_to music_sub_categories_url
  end
end
