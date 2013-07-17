class Post < ActiveRecord::Base
  belongs_to :category
  validates :title, presence: true
  validates :description, presence: true
  validates :email, presence: true
  validates :price, presence: true

  # Remember to create a migration!
end
