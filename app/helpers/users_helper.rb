module UsersHelper
  def author_link ( theAuth ) 
    if (theAuth.class == User)
     link_to theAuth.display , theAuth
    else
     nil
    end
  end
end
