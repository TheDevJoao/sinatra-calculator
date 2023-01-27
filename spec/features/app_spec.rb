require_relative '../spec_helper'

RSpec.describe 'App' do
  def app
    App
  end

  it "loads the home page" do
    get '/'
    expect(last_response).to be_ok
  end

  it "loads error page" do
    get '/error'
    expect(last_response).to include{"<h1>Error, cannot divide by zero!</h1>"}
  end

  it "checks if the form loaded" do
    get '/'
    expect(last_response.body).to include{"<form class='calculator-container' action='/calculate' method='post'>"}
  end

  it "checks if the input fields loaded" do
    get '/'
    expect(last_response.body).to include{"<input required='true' type='number' step='0.01' placeholder='Number 1' name='input_one' value='<%= @result %>'/>"}
    expect(last_response.body).to include{"<input required='true' type='number' step='0.01' placeholder='Number 2' name='input_two'/>"}
  end

  it "checks if the operator buttons loaded" do
    get '/'
    expect(last_response.body).to include{"<button name='operation' value='+'>+</button>"}
    expect(last_response.body).to include{"<button name='operation' value='-'>-</button>"}
    expect(last_response.body).to include{"<button name='operation' value='x'>x</button>"}
    expect(last_response.body).to include{"<button name='operation' value='/'>/</button>"}
  end

  it "checks if the result input loaded" do
    get '/'
    expect(last_response.body).to include{"<input class='result' type='number' readonly placeholder='Result' value='<%= @result %>'>"}
  end
end