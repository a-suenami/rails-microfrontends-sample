require "application_system_test_case"

class ProductService::ProductsTest < ApplicationSystemTestCase
  setup do
    @product_service_product = product_service_products(:one)
  end

  test "visiting the index" do
    visit product_service_products_url
    assert_selector "h1", text: "Product Service/Products"
  end

  test "creating a Product" do
    visit product_service_products_url
    click_on "New Product Service/Product"

    fill_in "Name", with: @product_service_product.name
    fill_in "Price", with: @product_service_product.price
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit product_service_products_url
    click_on "Edit", match: :first

    fill_in "Name", with: @product_service_product.name
    fill_in "Price", with: @product_service_product.price
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit product_service_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
