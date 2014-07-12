require 'spec_helper'

feature 'Add statement' do
  scenario 'User can see Welcome on homepage' do
    visit '/'
    expect(page).to have_content 'Welcome to The Fuck It Bucket'
  end
end