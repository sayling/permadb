require 'rails_helper'

describe HomeController do

  it 'successfully loads the homepage' do
    get :index
    expect(response).to  have_http_status(200)
  end

end
