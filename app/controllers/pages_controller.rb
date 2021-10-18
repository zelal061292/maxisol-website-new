class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :tarif, :galery]

  def home
  end

  def tarif
  end

  def dashboard
  end

  def galery
    @posts = Post.all
  end

end
