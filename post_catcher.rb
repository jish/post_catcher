require 'rubygems'
require 'sinatra/base'

class PostCatcher < Sinatra::Base

  def log(str)
    @env["rack.errors"].write(str + "\n")
  end

  get "/" do
    "Post to '/' and watch the logs to see what comes in."
  end

  post "/" do
    log(params.inspect)
    "post received"
  end

end
