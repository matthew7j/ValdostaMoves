class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  before_filter :load_forum
  impressionist actions: [:show]

  # GET /topics
  # GET /topics.json
  def index
    @topics = Topic.all
    respond_to do |format|
      format.html # index.html.erb
      format.mobile
      format.xml  { render :xml => @topics }
    end
  end

  # GET /topics/1
  # GET /topics/1.json
  def show
  end

  # GET /topics/new
  def new
    @topic = Topic.new
    @post = @topic.posts.build(post_params)
    #@post.user_id = current_user
 
    respond_to do |format|
      format.html # new.html.erb
      format.mobile
    end
  end
  
  def reply
    @topic = Topic.find(params[:id])
    @post = @topic.posts.build(post_params)
    
    respond_to do |format|
      format.html #reply.html.erb
      format.mobile
    end
  end
  
  def save_reply
    if !current_user
      redirect_to(home_index_path, :notice =>"Please login before posting")
      return 1;
    end
    
    if Topic.exists?(params[:id])
      @topic = Topic.find(params[:id])
      @post = @topic.posts.build(post_params)
      @topic.user = current_user
      @post.user = current_user
    else
      redirect_to(forums_path, :notice =>"Please specify a valid forum")
    end
        
    respond_to do |format|
      if current_user && @post.save
        format.html { redirect_to(forum_path(@forum), :notice => 'Your reply was posted') }
        format.mobile { redirect_to(forum_path(@forum), :notice => 'Your reply was posted') }
      else
        format.html { render :action => "new" }
        format.mobile { render :action => "new" }
      end
    end
  end
  
  # GET /topics/1/edit
  def edit
  end

  # POST /topics
  # POST /topics.json
  def create
    @topic = Topic.new(topic_params)
    @post = @topic.posts.build(post_params)
    @topic.user  = current_user
    @post.user = current_user
    @topic.forum = @forum

    respond_to do |format|
      if @topic.save
        format.html { redirect_to @forum, notice: 'Topic was successfully created.' }
        format.mobile { redirect_to @forum, notice: 'Topic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @topic }
      else
        format.html { render action: 'new' }
        format.mobile { render action: 'new' }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topics/1
  # PATCH/PUT /topics/1.json
  def update
    respond_to do |format|
      if @topic.update(topic_params)
        format.html { redirect_to forum_path(:id => @forum), notice: 'Topic was successfully updated.' }
        format.mobile { redirect_to forum_path(:id => @forum), notice: 'Topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.mobile { render action: 'edit' }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.json
  def destroy
    @topic.destroy
    respond_to do |format|
      format.html { redirect_to forum_url(:id=>@forum) }
      format.mobile { redirect_to forum_url(:id=>@forum) }
      format.json { head :no_content }
    end
  end

  private
    def set_topic
      @topic = Topic.find(params[:id])
    end
      
    # Use callbacks to share common setup or constraints between actions.
    def load_forum
    if Forum.exists?(params[:forum_id])
      @forum = Forum.find(params[:forum_id]);
    end
              
    unless @forum
      redirect_to(forums_path, :notice =>"Please specify a valid forum")
    end
  end
    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:title, :forum_id, :user_id)
    end
    
    def post_params
      if params[:post].present?
        params.require(:post).permit(:user_id, :topic_id, :body)
      end
    end
    
    def forum_params
      params.require(:forum).permit(:title, :user_id)
    end
end
