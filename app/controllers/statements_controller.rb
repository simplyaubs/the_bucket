class StatementsController < ApplicationController

  def index
    @statement = Statement.new
    @statements = Statement.all
  end

  def create
    @statement = Statement.create(statement_params)
    if @statement.save
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def statement_params
    params.require(:statement).permit(:statement)
  end

end

