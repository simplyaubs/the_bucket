class StatementsController < ApplicationController

  def index
    @statement = Statement.new
    @statements = Statement.all
    @all_time_count = Statement.all.count
    @todays_count = Statement.where('created_at >= ?', 1.day.ago).count
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

