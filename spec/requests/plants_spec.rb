require 'rails_helper'

RSpec.describe "Plants", :type => :request do
  describe "GET /plants" do
    it "works! (now write some real specs)" do
      get plants_path
      expect(response.status).to be(200)
    end
  end
end
