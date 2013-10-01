class MasterController < ApplicationController
  before_filter :authorize

  def index
    @user     = current_user
    @wods     = @user.wods.all
    @wod    ||= @user.wods.order("updated_at").last
    @lift   ||= @user.lifts.order("updated_at").last

    if !@wod.nil? && !@lift.nil?
      @wod.updated_at > @lift.updated_at ? @detail_view_route = 'wod/show' : @detail_view_route = 'lift/show'
    elsif !@wod.nil? || !@lift.nil?
      @detail_view_route = "#{[@wod, @lift].compact![0].class.model_name.human.downcase}s/show"
    end

  end
end
