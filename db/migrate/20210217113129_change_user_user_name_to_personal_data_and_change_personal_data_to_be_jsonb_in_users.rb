class ChangeUserUserNameToPersonalDataAndChangePersonalDataToBeJsonbInUsers < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :personal_data, :jsonb

    User.all.each do |user|
      user.update(personal_data: { username: user.username })
    end
    remove_column :users, :username
  end

  def down
    add_column :users, :username, :string

    User.all.each do |user|
      user.update(username: user.personal_data[:username])
    end

    remove_column :users, :personal_data
  end
end
