require 'test_helper'

class WordPornsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @word_porn = word_porns(:one)
  end

  test "should get index" do
    get word_porns_url
    assert_response :success
  end

  test "should get new" do
    get new_word_porn_url
    assert_response :success
  end

  test "should create word_porn" do
    assert_difference('WordPorn.count') do
      post word_porns_url, params: { word_porn: {  } }
    end

    assert_redirected_to word_porn_url(WordPorn.last)
  end

  test "should show word_porn" do
    get word_porn_url(@word_porn)
    assert_response :success
  end

  test "should get edit" do
    get edit_word_porn_url(@word_porn)
    assert_response :success
  end

  test "should update word_porn" do
    patch word_porn_url(@word_porn), params: { word_porn: {  } }
    assert_redirected_to word_porn_url(@word_porn)
  end

  test "should destroy word_porn" do
    assert_difference('WordPorn.count', -1) do
      delete word_porn_url(@word_porn)
    end

    assert_redirected_to word_porns_url
  end
end
