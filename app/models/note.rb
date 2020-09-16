class Note < ApplicationRecord
  validates :title, presence: { message: "Title cannot be empty." }
  validates :content, presence: { message: "Note cannot be empty." }
end
