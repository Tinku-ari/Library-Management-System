class MembersController < ApplicationController
  def welcome
    # Displaying a static html template
  end

  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to @member, notice: 'Member was successfully created.'
    else
      render 'new'
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy

    redirect_to members_path, notice: 'Member was successfully deleted'
  end

  def update
    @member = Member.find(params[:id])

    if @member.update(member_params)
      redirect_to @member
    else
      render 'edit'
    end
  end

  def show
    @member = Member.find(params[:id])
  end

  private

  def member_params
    params.require(:member).permit(:name, :description)
  end
end
