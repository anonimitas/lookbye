require 'test_helper'

class StipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stipe = stipes(:one)
  end

  test "should get index" do
    get stipes_url
    assert_response :success
  end

  test "should get new" do
    get new_stipe_url
    assert_response :success
  end

  test "should create stipe" do
    assert_difference('Stipe.count') do
      post stipes_url, params: { stipe: { body: @stipe.body, description: @stipe.description, slug: @stipe.slug, title: @stipe.title } }
    end

    assert_redirected_to stipe_url(Stipe.last)
  end

  test "should show stipe" do
    get stipe_url(@stipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_stipe_url(@stipe)
    assert_response :success
  end

  test "should update stipe" do
    patch stipe_url(@stipe), params: { stipe: { body: @stipe.body, description: @stipe.description, slug: @stipe.slug, title: @stipe.title } }
    assert_redirected_to stipe_url(@stipe)
  end

  test "should destroy stipe" do
    assert_difference('Stipe.count', -1) do
      delete stipe_url(@stipe)
    end

    assert_redirected_to stipes_url
  end
end
