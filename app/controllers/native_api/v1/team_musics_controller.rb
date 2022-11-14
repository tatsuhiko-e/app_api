class NativeApi::V1::TeamMusicsController < ApplicationController
  def index
    admins = Admin.all
    render json: admins
  end


  def show
    admin = Admin.find(params[:id])
    render json: {
      admin: admin,
      musics: admin.musics
    }
  end
end
