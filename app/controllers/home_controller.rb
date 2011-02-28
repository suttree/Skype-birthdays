class HomeController < ApplicationController
  def index
    if current_user
      @graph = Koala::Facebook::GraphAPI.new(current_user.login_account.token)
      @profile = @graph.get_object("me")
      @friends = @graph.get_connections("me", "friends", {:fields => "name,birthday"})
      #graph.put_object("me", "feed", :message => "I am writing on my wall!")
    end
  end
end
