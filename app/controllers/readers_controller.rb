class ReadersController < ApplicationController

  def index
    readers = Reader.all
    render json: readers.as_json({
      include: {:books => {}}
      })
  end

  def show
    reader = Reader.find(params[:id])
    render json: reader
  end

end