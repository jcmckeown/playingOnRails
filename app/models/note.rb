class Note < ApplicationRecord
  belongs_to :note_auth, class_name: "User"
end
