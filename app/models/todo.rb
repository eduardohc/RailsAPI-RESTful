# Todo Model
# title:string
# created_by:string
# created_at:datetime
# updated_at:datetime
class Todo < ApplicationRecord
  has_many :items, dependent: :destroy

  validates :title, :created_by, presence: :true
end