class KoalaController < ApplicationController
  def index
    @graph = Koala::Facebook::API.new(ENV['OAUTH'])
    @profile = @graph.get_object("104635906715498")
    @friends = @graph.get_connections("104635906715498", "friends")
  end
end
