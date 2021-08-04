class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :tarif, :galery,]

  def home
  end

  def tarif
  end

  def galery
  end

  def dashboard
  end

end
