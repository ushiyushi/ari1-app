class Question < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true

  belongs_to :user
  has_many :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
