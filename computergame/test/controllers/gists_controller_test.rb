require 'test_helper'

class GistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gist = gists(:one)
  end

  test "should get index" do
    get gists_url
    assert_response :success
  end

  test "should get new" do
    get new_gist_url
    assert_response :success
  end

  test "should create gist" do
    assert_difference('Gist.count') do
      post gists_url, params: { gist: { desc: @gist.desc, lang: @gist.lang, src: @gist.src } }
    end

    assert_redirected_to gist_path(Gist.last)
  end

  test "should show gist" do
    get gist_url(@gist)
    assert_response :success
  end

  test "should get edit" do
    get edit_gist_url(@gist)
    assert_response :success
  end

  test "should update gist" do
    patch gist_url(@gist), params: { gist: { desc: @gist.desc, lang: @gist.lang, src: @gist.src } }
    assert_redirected_to gist_path(@gist)
  end

  test "should destroy gist" do
    assert_difference('Gist.count', -1) do
      delete gist_url(@gist)
    end

    assert_redirected_to gists_path
  end
end
