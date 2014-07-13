require 'spec_helper'

feature 'Add statements' do
  scenario 'User can see and add statements to The Bucket' do
    visit '/'
    expect(page).to have_content 'Welcome to The Fuck It Bucket'
    fill_in 'Statement', with: 'I just failed my assessment'
    click_on 'Fuck It'
    expect(page).to have_content 'I just failed my assessment'
  end
end