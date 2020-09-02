require 'rails_helper'
RSpec.feature 'Following', type: :feature do
  before :each do
    @user = User.create(Fullname: 'Taylor Swift', Username: 'tay')
    @user = User.create(Fullname: 'George Benson', Username: 'george')
  end
  it 'Should be able to follow a user' do
    visit login_path
    fill_in 'Username', with: 'tay'
    click_button 'Log In'
    click_on 'Taylor Swift'
    first(:css, '.font-follow-icon').click
    expect(page).to have_css('.font-unfollow-icon')
  end

  it 'Should be able to unfollow a user' do
    visit login_path
    fill_in 'Username', with: 'tay'
    click_button 'Log In'
    click_on 'Taylor Swift'
    first(:css, '.font-follow-icon').click
    first(:css, '.font-unfollow-icon').click
    expect(page).to have_css('.font-follow-icon')
  end
end
