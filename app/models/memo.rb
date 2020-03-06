class Memo < ApplicationRecord
    default_scope -> { order(day: :asc) }
    belongs_to :category
    belongs_to :user
end
