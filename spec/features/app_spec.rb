require_relative '../spec_helper'

RSpec.describe 'App', type: :feature do
  before do
    visit '/'
  end

  it 'loads the home page' do
    expect(page).to have_content('SINATRA ERB CALCULATOR')
  end

  it 'displays the result of a valid calculation' do
    fill_in 'input_one', with: '6'
    sleep 1
    fill_in 'input_two', with: '3'
    sleep 1
    click_button '+'
    expect(page).to have_field('input_one', with: '9.0')
    sleep 1
  end

  it 'displays an error message when dividing by zero' do
    fill_in 'input_one', with: '2'
    sleep 1
    fill_in 'input_two', with: '0'
    sleep 1
    click_button '/'
    expect { click_button '/' }
      .to raise_error(ZeroDivisionError, 'Cannot divide by zero!')
    sleep 1
  end

  it 'handles invalid input by displaying an error message' do
    fill_in 'input_one', with: 'foo'
    sleep 1
    fill_in 'input_two', with: 'bar'
    sleep 1
    click_button '/'
    expect(page).to have_content('Please enter valid numbers only')
    sleep 1
  end
end
