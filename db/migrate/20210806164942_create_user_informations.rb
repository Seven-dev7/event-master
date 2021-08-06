class CreateUserInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_informations do |t|
      t.string :fist_name
      t.string :last_name
      t.text :address
      t.string :zip_code
      t.string :city
      t.string :country
      t.integer :gender, default: 0
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
