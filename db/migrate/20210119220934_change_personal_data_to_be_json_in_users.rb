class ChangePersonalDataToBeJsonInUsers < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :personal_data, :json
  end

  def down
    change_column :users, :personal_data, :string
  end
end
