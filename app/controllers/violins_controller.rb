class ViolinsController < ApplicationController
  before_action :set_violin, only: [:show, :edit, :update, :destroy]

  # GET /violins
  # GET /violins.json
  def index
    @violins = Violin.all
  end

  # GET /violins/1
  # GET /violins/1.json
  def show
  end

  # GET /violins/new
  def new
    @violin = Violin.new
  end

  # GET /violins/1/edit
  def edit
  end

  # POST /violins
  # POST /violins.json
  def create
    @violin = Violin.new(violin_params)

    respond_to do |format|
      if @violin.save
        format.html { redirect_to @violin, notice: 'Violin was successfully created.' }
        format.json { render :show, status: :created, location: @violin }
      else
        format.html { render :new }
        format.json { render json: @violin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /violins/1
  # PATCH/PUT /violins/1.json
  def update
    respond_to do |format|
      if @violin.update(violin_params)
        format.html { redirect_to @violin, notice: 'Violin was successfully updated.' }
        format.json { render :show, status: :ok, location: @violin }
      else
        format.html { render :edit }
        format.json { render json: @violin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /violins/1
  # DELETE /violins/1.json
  def destroy
    @violin.destroy
    respond_to do |format|
      format.html { redirect_to violins_url, notice: 'Violin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_violin
      @violin = Violin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def violin_params
      params.require(:violin).permit(:maker, :price)
    end
end
