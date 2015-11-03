class Movie < ActiveRecord::Base
  # belongs_to :user
  has_many :comments
  has_many :taggings
  has_many :categorizings
  has_many :categories, through: :categorizings
  has_many :tags, through: :taggings

  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def all_categories=(names)
    self.categories = names.split(",").map do |name|
      Category.where(name: name.strip).first_or_create!
    end
  end

  def all_categories
    self.categories.map(&:name).join(", ")
  end
end
