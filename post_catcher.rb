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

  get "/ping" do
    log(params.inspect)
    "pong"
  end

  post "/ping" do
    "pong"
  end

  get "/foo" do
    %Q{{"foo":"bar"}}
  end

end
