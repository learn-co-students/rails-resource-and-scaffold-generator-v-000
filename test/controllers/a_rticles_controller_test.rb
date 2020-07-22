require 'test_helper'

class ARticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_rticle = a_rticles(:one)
  end

  test "should get index" do
    get a_rticles_url
    assert_response :success
  end

  test "should get new" do
    get new_a_rticle_url
    assert_response :success
  end

  test "should create a_rticle" do
    assert_difference('ARticle.count') do
      post a_rticles_url, params: { a_rticle: { body: @a_rticle.body, title: @a_rticle.title } }
    end

    assert_redirected_to a_rticle_url(ARticle.last)
  end

  test "should show a_rticle" do
    get a_rticle_url(@a_rticle)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_rticle_url(@a_rticle)
    assert_response :success
  end

  test "should update a_rticle" do
    patch a_rticle_url(@a_rticle), params: { a_rticle: { body: @a_rticle.body, title: @a_rticle.title } }
    assert_redirected_to a_rticle_url(@a_rticle)
  end

  test "should destroy a_rticle" do
    assert_difference('ARticle.count', -1) do
      delete a_rticle_url(@a_rticle)
    end

    assert_redirected_to a_rticles_url
  end
end
