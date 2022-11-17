class ListsController < ApplicationController
  before_action :set_list, only: [:create]

  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(set_params)
  @list.save
  redirect_to list_list(@list)
  end
end
 private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:title).permit(:overview)
  end
