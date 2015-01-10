require 'rails_helper'

RSpec.describe Animal, :type => :model do

  context 'validations' do
    it { should validate_uniqueness_of(:scientific_name) }
    it { should validate_presence_of(:scientific_name) }
    it { should validate_presence_of(:common_name) }
  end

  context 'relationships' do
    it { should belong_to(:user) }
  end


end
