class PagesController < ApplicationController
 skip_before_action :authenticate_user!, :only => [:index]
  def home
    @courses = Course.all.limit(3)
    @latest_couses = Course.all.limit(3).order(created_at: :desc)
  end

   def activity
    @activities = PublicActivity::Activity.all
  end
end
