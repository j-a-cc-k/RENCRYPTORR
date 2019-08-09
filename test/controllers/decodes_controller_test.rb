require 'test_helper'

class DecodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @decode = decodes(:one)
  end

  test "should get index" do
    get decodes_url
    assert_response :success
  end

  test "should get new" do
    get new_decode_url
    assert_response :success
  end

  test "should create decode" do
    assert_difference('Decode.count') do
      post decodes_url, params: { decode: { inputed_encode: @decode.inputed_encode, inputed_key: @decode.inputed_key } }
    end

    assert_redirected_to decode_url(Decode.last)
  end

  test "should show decode" do
    get decode_url(@decode)
    assert_response :success
  end

  test "should get edit" do
    get edit_decode_url(@decode)
    assert_response :success
  end

  test "should update decode" do
    patch decode_url(@decode), params: { decode: { inputed_encode: @decode.inputed_encode, inputed_key: @decode.inputed_key } }
    assert_redirected_to decode_url(@decode)
  end

  test "should destroy decode" do
    assert_difference('Decode.count', -1) do
      delete decode_url(@decode)
    end

    assert_redirected_to decodes_url
  end
end
