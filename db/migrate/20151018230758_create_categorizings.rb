class CreateCategorizings < ActiveRecord::Migration
  def change
    create_table :categorizings do |t|
      t.belongs_to :movie, index: true, foreign_key: true
      t.belongs_to :category, index: true, foreign_key: true
    end
  end
end
