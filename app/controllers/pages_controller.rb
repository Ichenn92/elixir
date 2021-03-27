class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home search]

  def home
  end

  def search
    query = params[:query]
    @users = User.search_by_nick_first_last_name(query)
    @activities = Activity.search_by_name_and_description(query)
  end
end
