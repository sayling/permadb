class Animal < ActiveRecord::Base
  belongs_to :user

  validates :scientific_name, uniqueness: true, presence: true
  validates :common_name, presence: true

end
