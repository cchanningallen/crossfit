class LiftsetsController < ApplicationController
  before_action :set_liftset, only: [:show, :edit, :update, :destroy]

  # GET /liftsets
  # GET /liftsets.json
  def index
    @liftsets = Liftset.all
  end

  # GET /liftsets/1
  # GET /liftsets/1.json
  def show
  end

  # GET /liftsets/new
  def new
    @liftset = Liftset.new
  end

  # GET /liftsets/1/edit
  def edit
  end

  # POST /liftsets
  # POST /liftsets.json
  def create
    @liftset = Liftset.new(liftset_params)

    respond_to do |format|
      if @liftset.save
        format.html { redirect_to @liftset, notice: 'Liftset was successfully created.' }
        format.json { render action: 'show', status: :created, location: @liftset }
      else
        format.html { render action: 'new' }
        format.json { render json: @liftset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liftsets/1
  # PATCH/PUT /liftsets/1.json
  def update
    respond_to do |format|
      if @liftset.update(liftset_params)
        format.html { redirect_to @liftset, notice: 'Liftset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @liftset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liftsets/1
  # DELETE /liftsets/1.json
  def destroy
    @liftset.destroy
    respond_to do |format|
      format.html { redirect_to liftsets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liftset
      @liftset = Liftset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liftset_params
      params.require(:liftset).permit(:setnum, :weight, :reps, :lift_id)
    end
end
