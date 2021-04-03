class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @categories = Category.all
    @cities = Activity.distinct.pluck(:name)
  end
end
