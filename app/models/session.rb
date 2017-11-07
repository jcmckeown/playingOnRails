class Session < ApplicationRecord
  belongs_to :who, class_name: "User"
end
