require 'rails_helper'

RSpec.feature 'Like', type: :feature do
  before :each do
    @user = User.create(Fullname: 'Taylor Swift', Username: 'tay')
    @user = User.create(Fullname: 'George Benson', Username: 'george')
    Opinion.create(AuthorId: @user.id, Text: 'music was there for me')
  end

  it 'Should like a created post' do
    visit root_path
    fill_in 'Username', with: 'tay'
    click_button 'Log In'
    fill_in 'opinion[Text]', with: 'some text on opinion'
    click_button 'Tweet'
    first(:css, '.user-2').click
    expect(page).to have_content('1 like')
  end

  it 'Should unlike a post' do
    visit root_path
    fill_in 'Username', with: 'tay'
    click_button 'Log In'
    fill_in 'opinion[Text]', with: 'some text on opinion'
    click_button 'Tweet'
    first(:css, '.user-2').click
    first(:css, '.user-1').click
    expect(page).to_not have_content('1 like')
  end
end
