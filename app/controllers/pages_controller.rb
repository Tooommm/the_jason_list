class PagesController < ApplicationController
  def home
    @argonaute = Argonaute.new
    @argonautes = Argonaute.all
    @half_gods = Argonaute.gods
    @humans = Argonaute.humans
  end
end
