class User < ApplicationRecord
   has_many :notes

   def author_link
      link_to display , "/users/" + id.to_s 
   end
end
