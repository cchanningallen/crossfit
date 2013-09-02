class WodsController < ApplicationController
  before_filter :authorize
  before_action :set_user
  before_action :set_wod, only: [:show, :edit, :update, :destroy]

  # GET /wods
  # GET /wods.json
  def index
    @wods = @user.wods.all
  end

  # GET /wods/1
  # GET /wods/1.json
  def show
    respond_to do |format|
      format.html { render layout: false }
      format.json
    end    
  end

  # GET /wods/new
  def new
    @wod = @user.wods.build

    respond_to do |format|
      format.html { render layout: false }
      format.json
    end
  end

  # GET /wods/1/edit
  def edit
    respond_to do |format|
      format.html { render layout: false }
      format.json
    end
  end

  # POST /wods
  # POST /wods.json
  def create
    @wod = @user.wods.build(wod_params)

    respond_to do |format|
      if @wod.save
        format.html { redirect_to master_index_url(@user, @wod), notice: 'Wod was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wod }
      else
        format.html { render action: 'new' }
        format.json { render json: @wod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wods/1
  # PATCH/PUT /wods/1.json
  def update
    respond_to do |format|
      if @wod.update(wod_params)
        format.html { redirect_to master_index_url(@user, @wod), notice: 'Wod was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wods/1
  # DELETE /wods/1.json
  def destroy
    @wod.destroy
    respond_to do |format|
      format.html { redirect_to master_index_url(@user) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_wod
      @wod = Wod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wod_params
      params.require(:wod).permit(:name, :wod_type, :score, :score_type, :rx, :notes, :user_id)
    end
end
