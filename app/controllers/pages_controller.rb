class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :tarif, :galery, :photosi, :photosa]

  def home
  end

  def tarif
  end

  def dashboard
  end

  def galery
    @posts = Post.all
  end

  def photosi
    @posts = Post.all
  end

  def photosa
    @posts = Post.all
  end


end
