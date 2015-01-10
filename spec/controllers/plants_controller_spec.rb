require 'rails_helper'

RSpec.describe PlantsController, :type => :controller do

  let(:plant) { FactoryGirl.build(:plant) }
  let(:valid_attributes) { FactoryGirl.attributes_for(:plant) }
  let(:invalid_attributes) { FactoryGirl.attributes_for(:plant, common_name: nil) }
  let(:valid_session) { {} }

  it 'has a valid factory' do
    expect(FactoryGirl.build(:plant)).to be_valid
  end

  describe 'GET index' do
    it 'assigns all plants as @plants' do
      plant = Plant.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:plants)).to eq([plant])
    end
  end

  describe 'GET show' do
    it 'assigns the requested plant as @plant' do
      plant = Plant.create! valid_attributes
      get :show, {:id => plant.to_param}, valid_session
      expect(assigns(:plant)).to eq(plant)
    end
  end

  describe 'GET new' do
    it 'assigns a new plant as @plant' do
      get :new, {}, valid_session
      expect(assigns(:plant)).to be_a_new(Plant)
    end
  end

  describe 'GET edit' do
    it 'assigns the requested plant as @plant' do
      plant = Plant.create! valid_attributes
      get :edit, {:id => plant.to_param}, valid_session
      expect(assigns(:plant)).to eq(plant)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new Plant' do
        expect {
          post :create, {:plant => valid_attributes}, valid_session
        }.to change(Plant, :count).by(1)
      end

      it 'assigns a newly created plant as @plant' do
        post :create, {:plant => valid_attributes}, valid_session
        expect(assigns(:plant)).to be_a(Plant)
        expect(assigns(:plant)).to be_persisted
      end

      it 'redirects to the created plant' do
        post :create, {:plant => valid_attributes}, valid_session
        expect(response).to redirect_to(Plant.last)
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved plant as @plant' do
        post :create, {:plant => invalid_attributes}, valid_session
        expect(assigns(:plant)).to be_a_new(Plant)
      end

      it "re-renders the 'new' template" do
        post :create, {:plant => invalid_attributes}, valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      let(:new_attributes) do
        FactoryGirl.attributes_for(:plant, common_name: 'new common name', scientific_name: 'blady new name woop')
      end

      it 'updates the requested plant' do
        plant = Plant.create! valid_attributes
        put :update, {:id => plant.to_param, :plant => new_attributes}, valid_session
        plant.reload
        expect(plant.common_name).to eq(new_attributes[:common_name])
      end

      it 'assigns the requested plant as @plant' do
        plant = Plant.create! valid_attributes
        put :update, {:id => plant.to_param, :plant => valid_attributes}, valid_session
        expect(assigns(:plant)).to eq(plant)
      end

      it 'redirects to the plant' do
        plant = Plant.create! valid_attributes
        put :update, {:id => plant.to_param, :plant => valid_attributes}, valid_session
        expect(response).to redirect_to(plant)
      end
    end

    describe 'with invalid params' do
      it 'assigns the plant as @plant' do
        plant = Plant.create! valid_attributes
        put :update, {:id => plant.to_param, :plant => invalid_attributes}, valid_session
        expect(assigns(:plant)).to eq(plant)
      end

      it "re-renders the 'edit' template" do
        plant = Plant.create! valid_attributes
        put :update, {:id => plant.to_param, :plant => invalid_attributes}, valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested plant' do
      plant = Plant.create! valid_attributes
      expect {
        delete :destroy, {:id => plant.to_param}, valid_session
      }.to change(Plant, :count).by(-1)
    end

    it 'redirects to the plants list' do
      plant = Plant.create! valid_attributes
      delete :destroy, {:id => plant.to_param}, valid_session
      expect(response).to redirect_to(plants_url)
    end
  end

end
