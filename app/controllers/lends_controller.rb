class LendsController < ApplicationController
  def index
    # Static html page
    @lends = Lend.all
  end

  def new
    @lend = Lend.new
  end

  def create
    members = Member.where(id: params[:lend][:member_id]) if params[:lend][:member_id].present?
    books = Book.where(id: params[:lend][:book_code]) if params[:lend][:book_code].present?

    Lend.transaction do
      @lend = Lend.new(lend_params)
      if @lend.save
        redirect_to lends_path, notice: 'Book was lended successfully.'
      else
        render 'new'
      end
    end
  rescue Exception => ex
    render :new
  end

  def edit
  end

  def show
    @lend = Lend.find(params[:id])
  end

  def update
  end

  private
  def lend_params
    params.require(:lend).permit(:member_id, :book_code, :date_of_issue, :date_of_return)
    date_of_issue => Date.new(params[:date_of_issue(3i)], params[:date_of_issue(2i)], params[date_of_issue(1i)])
    params << date_of_issue
  end
end
