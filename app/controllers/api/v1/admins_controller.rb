class Api::V1::AdminsController < ApplicationController
  def edit
    admin = Admin.find(current_api_v1_admin.id)
    if admin.update(admin_params)
      render json: { status: :ok, data: admin }
    else
      render json: { status: :bad_request, data: errors }
    end
  end

  def show
    admin = admin = Admin.find(params[:id])
    render json: { status: :ok, data: admin }
  end

  private

  def admin_params
    params.require(:admin).permit(:team_name, :team_theme, :image)
  end

end
