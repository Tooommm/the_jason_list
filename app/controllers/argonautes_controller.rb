class ArgonautesController < ApplicationController

  def create
    @argonaute = Argonaute.new(argonaute_params)
    @argonaute.name = @argonaute.name.split.map(&:capitalize).join(' ')
    @argonautes = Argonaute.all
    @argonaute_name = []
    @argonautes.each do |argonaute|
      @argonaute_name << argonaute.name
    end
    if @argonaute.name == "Jason"
      @argonaute.captain = true
      @argonaute.notes = "beau, vaillant et courageux"
      @argonaute.half_god = true
    end
    if @argonaute_name.include? @argonaute.name
      flash[:alert] = "#{@argonaute.name} est déjà à bord!"
      redirect_to root_path
    elsif @argonautes.size < 50 && @argonaute.save
      flash[:notice] = "#{@argonaute.name} est à bord!"
      redirect_to root_path
    else
      flash[:alert] = "Mollo Jason y a trop de monde à bord!"
      redirect_to root_path
    end
  end

  private

  def argonaute_params
    params.require(:argonaute).permit(:name, :half_god, :notes)
  end

end
