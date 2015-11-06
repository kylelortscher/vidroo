class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  def search
    if params[:search].present?
      @videos = Video.search(params[:search])
    else
      @videos = Video.all
    end
    render layout: 'indexapplication'
  end      

  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.paginate(:page => params[:page], :per_page => 25)
    render layout: 'indexapplication'
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
  end

  # GET /videos/new
  def new
    @video = Video.new
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = Video.new(video_params)
    @video.user = current_user

    respond_to do |format|
      if @video.save
        format.html { redirect_to root_path, notice: 'Video was successfully created.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  def like
    @video = Video.find(params[:id])
    like = Like.create(like: params[:like], user: current_user, video: @video)
    if like.valid?
      flash[:success] = "Your selection was successful"
      redirect_to :back
    elsif like.user_id.nil?
      flash[:danger] = "You have to log in to vote."
      redirect_to new_user_session_path
    else
      flash[:danger] = "You can only like/dislike a recipe one."
      redirect_to :back  
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def favorite
    type = params[:type]
    if type == "favorite"
      current_user.favorites << @video
      redirect_to :back, notice: "Video was successfully added to favorites"
    elsif type == "unfavorite"
      current_user.favorites.delete(@video)
      redirect_to :back, notice: "Video was successfully removed from favorites"
    else
      redirect_to :back, notice: "Nothing happened."
    end    
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:title, :url, :user_id, :game, :channel)
    end
end
