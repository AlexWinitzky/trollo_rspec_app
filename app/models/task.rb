class Task < ApplicationRecord
  belongs_to :lists
  dependent: :destroy
end
