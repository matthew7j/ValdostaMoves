class ActivitiesController < ApplicationController
  

  # GET /activities
  # GET /activities.json
  def index
    @activities = Activity.all
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
  end

  # GET /activities/new
  def new
    @activity = Activity.new
  end

  # GET /activities/1/edit
  def edit
  end

  # POST /activities
  # POST /activities.json
  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.duration == 15
      @activity.user.points += 1
    elsif @activity.duration == 30
      @activity.user.points += 2
    elsif @activity.duration == 45
      @activity.user.points += 3
    else
      @activity.user.points += 4
    end
    @activity.user.update_attributes(:points => @activity.user.points)

    respond_to do |format|
      if @activity.save
        format.html { redirect_to action: 'index', notice: 'Activity was successfully created.' }
        format.mobile { redirect_to action: 'index', notice: 'Activity was successfully created.' }
        format.json { render action: 'show', status: :created, location: @activity }
      else
        flash[:error] = 'Activity post was not successful. Must be signed in to post.'
        format.html { redirect_to action: 'index' }
        format.mobile { redirect_to action: 'index' }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
        format.mobile { redirect_to @activity, notice: 'Activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.mobile {render action: 'edit' }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url }
      format.mobile { redirect_to activities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:posts, :duration, :user_id)
    end
end
