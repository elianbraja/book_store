class Author < ApplicationRecord
  has_many :books
  has_one :private_token
  accepts_nested_attributes_for :books
  accepts_nested_attributes_for :private_token
end
