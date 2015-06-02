require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application

describe("triangle path", {:type => :feature}) do
  it("returns the type of triangle based on the input of measurements") do
    visit("/")
    fill_in('a', :with=> 12)
    fill_in('b', :with=> 12)
    fill_in('c', :with=> 12)
    click_button("Send")
    expect(page).to have_content('equilateral')
  end
end
