require 'rails_helper'

RSpec.feature "Integracions", type: :feature do

  scenario "failed with create post" do
    user = create(:user)

    visit new_user_session_path

    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Log in'

    expect(page).to have_text 'Signed in successfully'
    
    visit new_post_path

    fill_in 'Title', :with => Faker::Name.title 
    fill_in 'Description', :with => Faker::Lorem.paragraph
    attach_file("Photo", "#{Rails.root}/spec/factories/imagen.jpg")
    click_button 'Create Post'

    expect(page).to have_text 'Post was successfully created.'
  end

 

end