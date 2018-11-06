require 'test_helper'

class AbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abook = abooks(:one)
  end

  test "should get index" do
    get abooks_url
    assert_response :success
  end

  test "should get new" do
    get new_abook_url
    assert_response :success
  end

  test "should create abook" do
    assert_difference('Abook.count') do
      post abooks_url, params: { abook: { author: @abook.author, coupon: @abook.coupon, description: @abook.description, image: @abook.image, offerprice: @abook.offerprice, previewo: @abook.previewo, previewt: @abook.previewt, previewth: @abook.previewth, price: @abook.price, publication: @abook.publication, sdescription: @abook.sdescription, title: @abook.title } }
    end

    assert_redirected_to abook_url(Abook.last)
  end

  test "should show abook" do
    get abook_url(@abook)
    assert_response :success
  end

  test "should get edit" do
    get edit_abook_url(@abook)
    assert_response :success
  end

  test "should update abook" do
    patch abook_url(@abook), params: { abook: { author: @abook.author, coupon: @abook.coupon, description: @abook.description, image: @abook.image, offerprice: @abook.offerprice, previewo: @abook.previewo, previewt: @abook.previewt, previewth: @abook.previewth, price: @abook.price, publication: @abook.publication, sdescription: @abook.sdescription, title: @abook.title } }
    assert_redirected_to abook_url(@abook)
  end

  test "should destroy abook" do
    assert_difference('Abook.count', -1) do
      delete abook_url(@abook)
    end

    assert_redirected_to abooks_url
  end
end
