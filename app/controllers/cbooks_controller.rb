class CbooksController < ApplicationController
  before_action :set_cbook, only: [:show, :edit, :update, :destroy]

  # GET /cbooks
  # GET /cbooks.json
  def index
    @cbooks = Cbook.all
  end

  # GET /cbooks/1
  # GET /cbooks/1.json
  def show
  end

  # GET /cbooks/new
  def new
    @cbook = Cbook.new
  end

  # GET /cbooks/1/edit
  def edit
  end

  # POST /cbooks
  # POST /cbooks.json
  def create
    @cbook = Cbook.new(cbook_params)

    respond_to do |format|
      if @cbook.save
        format.html { redirect_to @cbook, notice: 'Cbook was successfully created.' }
        format.json { render :show, status: :created, location: @cbook }
      else
        format.html { render :new }
        format.json { render json: @cbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cbooks/1
  # PATCH/PUT /cbooks/1.json
  def update
    respond_to do |format|
      if @cbook.update(cbook_params)
        format.html { redirect_to @cbook, notice: 'Cbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @cbook }
      else
        format.html { render :edit }
        format.json { render json: @cbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cbooks/1
  # DELETE /cbooks/1.json
  def destroy
    @cbook.destroy
    respond_to do |format|
      format.html { redirect_to cbooks_url, notice: 'Cbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cbook
      @cbook = Cbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cbook_params
      params.require(:cbook).permit(:title, :description, :sdescription, :image, :previewo, :previewt, :previewth, :price, :offerprice, :coupon, :author, :publication, :saving, :off)
    end
end
