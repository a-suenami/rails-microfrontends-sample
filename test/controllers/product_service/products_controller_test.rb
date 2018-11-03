require 'test_helper'

class ProductService::ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_service_product = product_service_products(:one)
  end

  test "should get index" do
    get product_service_products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_service_product_url
    assert_response :success
  end

  test "should create product_service_product" do
    assert_difference('ProductService::Product.count') do
      post product_service_products_url, params: { product_service_product: { name: @product_service_product.name, price: @product_service_product.price } }
    end

    assert_redirected_to product_service_product_url(ProductService::Product.last)
  end

  test "should show product_service_product" do
    get product_service_product_url(@product_service_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_service_product_url(@product_service_product)
    assert_response :success
  end

  test "should update product_service_product" do
    patch product_service_product_url(@product_service_product), params: { product_service_product: { name: @product_service_product.name, price: @product_service_product.price } }
    assert_redirected_to product_service_product_url(@product_service_product)
  end

  test "should destroy product_service_product" do
    assert_difference('ProductService::Product.count', -1) do
      delete product_service_product_url(@product_service_product)
    end

    assert_redirected_to product_service_products_url
  end
end
