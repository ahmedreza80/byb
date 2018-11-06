require 'test_helper'

class CbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cbook = cbooks(:one)
  end

  test "should get index" do
    get cbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_cbook_url
    assert_response :success
  end

  test "should create cbook" do
    assert_difference('Cbook.count') do
      post cbooks_url, params: { cbook: { author: @cbook.author, coupon: @cbook.coupon, description: @cbook.description, image: @cbook.image, offerprice: @cbook.offerprice, previewo: @cbook.previewo, previewt: @cbook.previewt, previewth: @cbook.previewth, price: @cbook.price, publication: @cbook.publication, sdescription: @cbook.sdescription, title: @cbook.title } }
    end

    assert_redirected_to cbook_url(Cbook.last)
  end

  test "should show cbook" do
    get cbook_url(@cbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_cbook_url(@cbook)
    assert_response :success
  end

  test "should update cbook" do
    patch cbook_url(@cbook), params: { cbook: { author: @cbook.author, coupon: @cbook.coupon, description: @cbook.description, image: @cbook.image, offerprice: @cbook.offerprice, previewo: @cbook.previewo, previewt: @cbook.previewt, previewth: @cbook.previewth, price: @cbook.price, publication: @cbook.publication, sdescription: @cbook.sdescription, title: @cbook.title } }
    assert_redirected_to cbook_url(@cbook)
  end

  test "should destroy cbook" do
    assert_difference('Cbook.count', -1) do
      delete cbook_url(@cbook)
    end

    assert_redirected_to cbooks_url
  end
end
