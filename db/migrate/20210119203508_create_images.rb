class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.belongs_to :imageable, polymorphic: true
      t.string :url
      t.timestamps
    end
  end
end
