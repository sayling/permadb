class Plant < ActiveRecord::Base
  belongs_to :user

  validates :scientific_name, presence: true, uniqueness: true
  validates :common_name, presence: true

end
