class KoalaController < ApplicationController
  def index
    # CONFIG = YAML.load_file(Rails.root.join("config/facebook.yml"))[Rails.env]

    @graph = Koala::Facebook::API.new("1187056381415690|IfdNcTslSPofv_u_S4NDSeMkZlA")
    @profile = @graph.get_object("104635906715498")
    @friends = @graph.get_connections("104635906715498", "friends")
  end
end
