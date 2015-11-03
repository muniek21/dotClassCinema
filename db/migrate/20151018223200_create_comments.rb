class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.string :content
      t.references :user, index: true, foreign_key: true
    end
  end
end