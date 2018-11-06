require 'test_helper'

class GbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gbook = gbooks(:one)
  end

  test "should get index" do
    get gbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_gbook_url
    assert_response :success
  end

  test "should create gbook" do
    assert_difference('Gbook.count') do
      post gbooks_url, params: { gbook: { author: @gbook.author, coupon: @gbook.coupon, description: @gbook.description, image: @gbook.image, offerprice: @gbook.offerprice, previewo: @gbook.previewo, previewt: @gbook.previewt, previewth: @gbook.previewth, price: @gbook.price, publication: @gbook.publication, sdescription: @gbook.sdescription, title: @gbook.title } }
    end

    assert_redirected_to gbook_url(Gbook.last)
  end

  test "should show gbook" do
    get gbook_url(@gbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_gbook_url(@gbook)
    assert_response :success
  end

  test "should update gbook" do
    patch gbook_url(@gbook), params: { gbook: { author: @gbook.author, coupon: @gbook.coupon, description: @gbook.description, image: @gbook.image, offerprice: @gbook.offerprice, previewo: @gbook.previewo, previewt: @gbook.previewt, previewth: @gbook.previewth, price: @gbook.price, publication: @gbook.publication, sdescription: @gbook.sdescription, title: @gbook.title } }
    assert_redirected_to gbook_url(@gbook)
  end

  test "should destroy gbook" do
    assert_difference('Gbook.count', -1) do
      delete gbook_url(@gbook)
    end

    assert_redirected_to gbooks_url
  end
end
