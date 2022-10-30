class Api::V1::MusicsController < ApplicationController
  def index
    musics = Music.all
    render json: musics.order(release_date: :desc)
  end

  def show
    music = Music.find(params[:id])
    render json: music
  end

  def create
    music = Music.new(music_params)
    if music.save
      render json: { status: :ok, data: music }
    else
      render json: { status: :bad_requestttttttt, data: errors }
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
    params.require(:music).permit(:title, :theme, :active, :release_date, :image, :audio)
  end
end
