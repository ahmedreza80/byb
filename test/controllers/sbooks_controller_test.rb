require 'test_helper'

class SbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sbook = sbooks(:one)
  end

  test "should get index" do
    get sbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_sbook_url
    assert_response :success
  end

  test "should create sbook" do
    assert_difference('Sbook.count') do
      post sbooks_url, params: { sbook: { author: @sbook.author, coupon: @sbook.coupon, description: @sbook.description, image: @sbook.image, offerprice: @sbook.offerprice, previewo: @sbook.previewo, previewt: @sbook.previewt, previewth: @sbook.previewth, price: @sbook.price, publication: @sbook.publication, sdescription: @sbook.sdescription, title: @sbook.title } }
    end

    assert_redirected_to sbook_url(Sbook.last)
  end

  test "should show sbook" do
    get sbook_url(@sbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_sbook_url(@sbook)
    assert_response :success
  end

  test "should update sbook" do
    patch sbook_url(@sbook), params: { sbook: { author: @sbook.author, coupon: @sbook.coupon, description: @sbook.description, image: @sbook.image, offerprice: @sbook.offerprice, previewo: @sbook.previewo, previewt: @sbook.previewt, previewth: @sbook.previewth, price: @sbook.price, publication: @sbook.publication, sdescription: @sbook.sdescription, title: @sbook.title } }
    assert_redirected_to sbook_url(@sbook)
  end

  test "should destroy sbook" do
    assert_difference('Sbook.count', -1) do
      delete sbook_url(@sbook)
    end

    assert_redirected_to sbooks_url
  end
end
