require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  context 'Index' do
    before(:each) do
      get :index
    end

    it 'loads the index template' do
      expect(response).to render_template(:index)
    end

    it 'loads all the users OK' do
      expect(assigns(:users)).to eq(User.all)
    end


  end
end
