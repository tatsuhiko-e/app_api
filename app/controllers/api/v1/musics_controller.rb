class Api::V1::MusicsController < ApplicationController
  def index
    musics = Music.where(admin_id: current_api_v1_admin.id)
    render json: musics.order(release_date: :desc)
  end

  def show
    music = Music.find(params[:id])
    render json: music
  end

  def create
    music = Music.new(music_params)
    music.admin_id = current_api_v1_admin.id
    if music.save
      render json: { status: :ok, data: music }
    else
      render json: { status: :bad_request, data: errors }
    end
  end

  def update
    music = Music.find(params[:id])
    if music.update(music_params)
      render json: { status: :ok, data: music }
    else
      render json: { status: :bad_requestttttttt, data: errors }
    end
  end

  private

  def music_params
    params.require(:music).permit(:title, :theme, :active, :release_date, :image, :audio, :admin_id)
  end
end
