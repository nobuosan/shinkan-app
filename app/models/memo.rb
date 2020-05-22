class Memo < ApplicationRecord
    default_scope -> { order(day: :desc) }
    belongs_to :category
    belongs_to :user
end
