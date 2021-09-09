class Book < ApplicationRecord
  belongs_to :author

  validates_presence_of :date_of_publication

  def self.autori(id)
    where(author_id: id)
  end

end
