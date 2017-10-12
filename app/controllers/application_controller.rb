class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :log_request

private
  def log_request 
# they say that `request` is a Method. So, brutish memoizing... but is this necessary? 
    theReq = request
    WebRequest.create( requrl: theReq.fullpath , reqsrc: theReq.ip , reqverb: theReq.method , reqclient: "" )
  end
end
