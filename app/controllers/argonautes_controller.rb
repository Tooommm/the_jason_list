class ArgonautesController < ApplicationController

  def create
    @argonaute = Argonaute.new(argonaute_params)
    if @argonaute.save
      redirect_to root_path
    else
      raise
      redirect_to root_path
    end
  end

  private

  def argonaute_params
    params.require(:argonaute).permit(:name, :half_god, :notes)
  end

end
