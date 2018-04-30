class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :profile_picture
      t.string :username

      t.timestamps
    end
  end
end
