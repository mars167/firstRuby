class MicopostsController < ApplicationController
  before_action :set_micopost, only: [:show, :edit, :update, :destroy]

  # GET /micoposts
  # GET /micoposts.json
  def index
    @micoposts = Micopost.all
  end

  # GET /micoposts/1
  # GET /micoposts/1.json
  def show
  end

  # GET /micoposts/new
  def new
    @micopost = Micopost.new
  end

  # GET /micoposts/1/edit
  def edit
  end

  # POST /micoposts
  # POST /micoposts.json
  def create
    @micopost = Micopost.new(micopost_params)

    respond_to do |format|
      if @micopost.save
        format.html { redirect_to @micopost, notice: 'Micopost was successfully created.' }
        format.json { render :show, status: :created, location: @micopost }
      else
        format.html { render :new }
        format.json { render json: @micopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micoposts/1
  # PATCH/PUT /micoposts/1.json
  def update
    respond_to do |format|
      if @micopost.update(micopost_params)
        format.html { redirect_to @micopost, notice: 'Micopost was successfully updated.' }
        format.json { render :show, status: :ok, location: @micopost }
      else
        format.html { render :edit }
        format.json { render json: @micopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micoposts/1
  # DELETE /micoposts/1.json
  def destroy
    @micopost.destroy
    respond_to do |format|
      format.html { redirect_to micoposts_url, notice: 'Micopost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micopost
      @micopost = Micopost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micopost_params
      params.require(:micopost).permit(:content, :user_id)
    end
end
