class CreateUserProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_profiles do |t|
      t.integer :age
      t.text :location
      t.string :mobile_number
      t.text :user_tag
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
