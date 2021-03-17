class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home search]

  def home
  end

  def search
  end
end
