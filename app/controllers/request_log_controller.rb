class RequestLogController < ApplicationController
  def viewlog
    @web_requests = WebRequest.all
  end
end
