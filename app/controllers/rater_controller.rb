class RaterController < ApplicationController

  def create
    if user_signed_in?
      obj = params[:klass].classify.constantize.find(params[:id])
      obj.rate params[:score].to_i, current_user, params[:dimension]
      if params[:dimension] == "rating"
      current_user.event_points += 4
      current_user.update_attributes(:event_points => current_user.event_points)
      else
        current_user.event_points += 0.5
        current_user.update_attributes(:event_points => current_user.event_points)
      end

      render :json => true
    else
      render :json => false
    end
  end

end
