require 'test_helper'

class WordPornstarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @word_pornstar = word_pornstars(:one)
  end

  test "should get index" do
    get word_pornstars_url
    assert_response :success
  end

  test "should get new" do
    get new_word_pornstar_url
    assert_response :success
  end

  test "should create word_pornstar" do
    assert_difference('WordPornstar.count') do
      post word_pornstars_url, params: { word_pornstar: {  } }
    end

    assert_redirected_to word_pornstar_url(WordPornstar.last)
  end

  test "should show word_pornstar" do
    get word_pornstar_url(@word_pornstar)
    assert_response :success
  end

  test "should get edit" do
    get edit_word_pornstar_url(@word_pornstar)
    assert_response :success
  end

  test "should update word_pornstar" do
    patch word_pornstar_url(@word_pornstar), params: { word_pornstar: {  } }
    assert_redirected_to word_pornstar_url(@word_pornstar)
  end

  test "should destroy word_pornstar" do
    assert_difference('WordPornstar.count', -1) do
      delete word_pornstar_url(@word_pornstar)
    end

    assert_redirected_to word_pornstars_url
  end
end
