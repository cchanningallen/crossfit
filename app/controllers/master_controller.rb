class MasterController < ApplicationController
  before_filter :authorize

  def index
    @user = current_user
    @wods = @user.wods.all
    @wod ||= @user.wods.order("updated_at").last
  end
end
