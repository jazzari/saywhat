require 'test_helper'

class FaphrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faphra = faphras(:one)
  end

  test "should get index" do
    get faphras_url
    assert_response :success
  end

  test "should get new" do
    get new_faphra_url
    assert_response :success
  end

  test "should create faphra" do
    assert_difference('Faphra.count') do
      post faphras_url, params: { faphra: { body: @faphra.body } }
    end

    assert_redirected_to faphra_url(Faphra.last)
  end

  test "should show faphra" do
    get faphra_url(@faphra)
    assert_response :success
  end

  test "should get edit" do
    get edit_faphra_url(@faphra)
    assert_response :success
  end

  test "should update faphra" do
    patch faphra_url(@faphra), params: { faphra: { body: @faphra.body } }
    assert_redirected_to faphra_url(@faphra)
  end

  test "should destroy faphra" do
    assert_difference('Faphra.count', -1) do
      delete faphra_url(@faphra)
    end

    assert_redirected_to faphras_url
  end
end
