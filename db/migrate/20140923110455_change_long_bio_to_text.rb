class ChangeLongBioToText < ActiveRecord::Migration
  def up
    change_column :users, :long_bio, :text
  end

  def down
    change_column :users, :long_bio, :string
  end
end
