class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :group_type
      t.integer :status
      t.column :status, :string, default: 'active'

      t.timestamps
    end
  end
end
