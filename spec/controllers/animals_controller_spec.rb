require 'rails_helper'

RSpec.describe AnimalsController, :type => :controller do

  let(:animal) { FactoryGirl.build(:animal) }
  let(:valid_attributes) { FactoryGirl.attributes_for(:animal) }
  let(:invalid_attributes) { FactoryGirl.attributes_for(:animal, common_name: nil) }
  let(:valid_session) { {} }

  describe 'GET index' do
    it 'assigns all animals as @animals' do
      animal = Animal.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:animals)).to eq([animal])
    end
  end

  describe 'GET show' do
    it 'assigns the requested animal as @animal' do
      animal = Animal.create! valid_attributes
      get :show, {:id => animal.to_param}, valid_session
      expect(assigns(:animal)).to eq(animal)
    end
  end

  describe 'GET new' do
    it 'assigns a new animal as @animal' do
      get :new, {}, valid_session
      expect(assigns(:animal)).to be_a_new(Animal)
    end
  end

  describe 'GET edit' do
    it 'assigns the requested animal as @animal' do
      animal = Animal.create! valid_attributes
      get :edit, {:id => animal.to_param}, valid_session
      expect(assigns(:animal)).to eq(animal)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new Animal' do
        expect {
          post :create, {:animal => valid_attributes}, valid_session
        }.to change(Animal, :count).by(1)
      end

      it 'assigns a newly created animal as @animal' do
        post :create, {:animal => valid_attributes}, valid_session
        expect(assigns(:animal)).to be_a(Animal)
        expect(assigns(:animal)).to be_persisted
      end

      it 'redirects to the created animal' do
        post :create, {:animal => valid_attributes}, valid_session
        expect(response).to redirect_to(Animal.last)
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved animal as @animal' do
        post :create, {:animal => invalid_attributes}, valid_session
        expect(assigns(:animal)).to be_a_new(Animal)
      end

      it "re-renders the 'new' template" do
        post :create, {:animal => invalid_attributes}, valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      let(:new_attributes) { FactoryGirl.attributes_for(:animal, scientific_name: 'Woop de do, its a new name') }

      it 'updates the requested animal' do
        animal = Animal.create! valid_attributes
        put :update, {:id => animal.to_param, :animal => new_attributes}, valid_session
        animal.reload
        expect(animal.scientific_name).to eq(new_attributes[:scientific_name])
      end

      it 'assigns the requested animal as @animal' do
        animal = Animal.create! valid_attributes
        put :update, {:id => animal.to_param, :animal => valid_attributes}, valid_session
        expect(assigns(:animal)).to eq(animal)
      end

      it 'redirects to the animal' do
        animal = Animal.create! valid_attributes
        put :update, {:id => animal.to_param, :animal => valid_attributes}, valid_session
        expect(response).to redirect_to(animal)
      end
    end

    describe 'with invalid params' do
      it 'assigns the animal as @animal' do
        animal = Animal.create! valid_attributes
        put :update, {:id => animal.to_param, :animal => invalid_attributes}, valid_session
        expect(assigns(:animal)).to eq(animal)
      end

      it "re-renders the 'edit' template" do
        animal = Animal.create! valid_attributes
        put :update, {:id => animal.to_param, :animal => invalid_attributes}, valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested animal' do
      animal = Animal.create! valid_attributes
      expect {
        delete :destroy, {:id => animal.to_param}, valid_session
      }.to change(Animal, :count).by(-1)
    end

    it 'redirects to the animals list' do
      animal = Animal.create! valid_attributes
      delete :destroy, {:id => animal.to_param}, valid_session
      expect(response).to redirect_to(animals_url)
    end
  end

end
