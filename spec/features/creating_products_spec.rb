require 'spec_helper'

feature 'Products Management' do
  scenario "User creates a new product" do
    visit '/products/new'

    fill_in 'Name', with: 'Some Product'
    fill_in 'Description', with: 'Product Description'
    fill_in 'Image', with: 'http://ThomasCGreen.com/image.jpg'
    fill_in 'Price', with: '123.45'

    click_button 'Create Product'

    expect(page).to have_content('Product was successfully created.')
  end
end