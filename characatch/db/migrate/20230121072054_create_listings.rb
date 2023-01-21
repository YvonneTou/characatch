class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :mascot_name
      t.string :title
      t.text :description
      t.string :location
      t.float :hourly_rate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
