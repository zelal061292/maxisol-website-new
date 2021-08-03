class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :tarif ]

  def home
  end

  def tarif
  end

  def dashboard
  end

end
