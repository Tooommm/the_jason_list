class PagesController < ApplicationController
  def home
    @argonaute = Argonaute.new
    @argonautes = Argonaute.all
  end
end
