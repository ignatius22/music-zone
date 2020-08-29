require 'rails_helper'

RSpec.feature 'Opinion', type: :feature do
  before :each do
    @user = User.create(Fullname: 'Taylor Swift', Username: 'tay')
    @user = User.create(Fullname: 'George Benson', Username: 'george')
    Opinion.create(AuthorId: @user.id, Text: 'music was there for me')
  end

  it 'Should create an opinion' do
    visit root_path
    fill_in 'Username', with: 'tay'
    click_button 'Log In'
    fill_in 'opinion[Text]', with: 'music was there for me'
    click_button 'Tweet'
    expect(page).to have_content('HOME')
  end
end
