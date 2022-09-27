# frozen_string_literal: true

class Cid10sController < ApplicationController
  def index
    @q = Cid10.ransack(params[:q])
    @cid10s = @q.result.page params[:page]
  end

  private

  def cid10s_params
    params.require(:cid10).permit(:code, :description)
  end
end
