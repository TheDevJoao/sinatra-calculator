require_relative '../spec_helper'

RSpec.describe 'The Calculator App' do
  def app
    App
  end

  it "should load the home page" do
    get '/'
    expect(last_response).to be_ok
  end

  it "should load a welcome message" do
    get '/'
end