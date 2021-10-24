class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :tarif, :galery, :photosi, :photosa]

  def home
  end

  def tarif
  end

  def dashboard
  end

  def galery
    @posts = Post.where(cathegory: "Isolation exterieur")
  end

  def photosi
    @posts = Post.where(cathegory: "Isolation interieur")
  end

  def photosa
    @posts = Post.where(cathegory: "Autres")
  end


end
