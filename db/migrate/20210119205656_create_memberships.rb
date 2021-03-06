class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.integer :status
      t.belongs_to :group
      t.belongs_to :user
      t.column :status, :string, default: 'unactive'

      t.timestamps
    end
  end
end
