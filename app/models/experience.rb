class Experience < ApplicationRecord
  belongs_to :profile
  # has_many(:projects, dependent: :destroy)
end
