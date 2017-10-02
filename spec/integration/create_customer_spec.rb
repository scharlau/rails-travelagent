require 'spec_helper'
require 'rails_helper'

feature 'create customer' do
    scenario "can create customer" do
        visit '/customers/new'
        expect(page).to have_content('New Customer')
        
        fill_in 'First name', :with=>'Sharon'
        fill_in 'Last name', :with=>'Harrison'
        fill_in 'Has good credit', :with=>1
        click_button 'Create Customer'
        expect(page).to have_content('First name: Sharon')
        expect(page).to have_content('Last name: Harrison')
    end
     scenario "can create customer error" do
        visit '/customers/new'
        expect(page).to have_content('New Customer')
        click_button 'Create Customer'
        expect(page).to have_content('First name can\'t be blank')
    end
end