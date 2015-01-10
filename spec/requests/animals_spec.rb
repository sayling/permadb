require 'rails_helper'

RSpec.describe 'Animals', :type => :request do

  describe 'GET /animals' do

    it 'responds OK' do
      get animals_path
      expect(response.status).to be(200)
    end

  end

end
