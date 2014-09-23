require 'rails_helper'

RSpec.describe User, :type => :model do

  context 'validations' do
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:email) }
    it { should ensure_length_of(:short_bio).is_at_most(250) }
    it { should validate_presence_of(:role) }
  end


end
