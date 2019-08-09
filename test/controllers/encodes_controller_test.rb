require 'test_helper'

class EncodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @encode = encodes(:one)
  end

  test "should get index" do
    get encodes_url
    assert_response :success
  end

  test "should get new" do
    get new_encode_url
    assert_response :success
  end

  test "should create encode" do
    assert_difference('Encode.count') do
      post encodes_url, params: { encode: { generated_key: @encode.generated_key, plain_message: @encode.plain_message } }
    end

    assert_redirected_to encode_url(Encode.last)
  end

  test "should show encode" do
    get encode_url(@encode)
    assert_response :success
  end

  test "should get edit" do
    get edit_encode_url(@encode)
    assert_response :success
  end

  test "should update encode" do
    patch encode_url(@encode), params: { encode: { generated_key: @encode.generated_key, plain_message: @encode.plain_message } }
    assert_redirected_to encode_url(@encode)
  end

  test "should destroy encode" do
    assert_difference('Encode.count', -1) do
      delete encode_url(@encode)
    end

    assert_redirected_to encodes_url
  end
end
