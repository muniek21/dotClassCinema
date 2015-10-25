class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :email
      t.string :password
      t.string :confirm_password

      t.timestamps null: false
    end
  end
end
