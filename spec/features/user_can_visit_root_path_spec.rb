require 'rails_helper'

describe "User can visit root path" do
  it "to see a search form" do
    visit '/'

    expect(current_path).to eq(root_path)
    expect(page).to have_content('Welcome to Poetry and Emotion')
    expect(page).to have_selector('input')
  end

  it "can search poems by author and display the first 10 poems" do
    visit '/'
    fill_in 'author', with: 'Emily'
    click_on 'Get Poems'

    expect(current_path).to eq("/search")
    
  end
end


# As a user
# When I visit "/"
# And I fill in "Emily" in the textfield(Note: Use the existing search form)
# And I click "Get Poems"
# Then I should be on page "/search"
# Then I should see a list of the first 10 poems.