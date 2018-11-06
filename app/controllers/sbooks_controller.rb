class SbooksController < ApplicationController
  before_action :set_sbook, only: [:show, :edit, :update, :destroy]

  # GET /sbooks
  # GET /sbooks.json
  def index
    @sbooks = Sbook.all
  end

  # GET /sbooks/1
  # GET /sbooks/1.json
  def show
  end

  # GET /sbooks/new
  def new
    @sbook = Sbook.new
  end

  # GET /sbooks/1/edit
  def edit
  end

  # POST /sbooks
  # POST /sbooks.json
  def create
    @sbook = Sbook.new(sbook_params)

    respond_to do |format|
      if @sbook.save
        format.html { redirect_to @sbook, notice: 'Sbook was successfully created.' }
        format.json { render :show, status: :created, location: @sbook }
      else
        format.html { render :new }
        format.json { render json: @sbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sbooks/1
  # PATCH/PUT /sbooks/1.json
  def update
    respond_to do |format|
      if @sbook.update(sbook_params)
        format.html { redirect_to @sbook, notice: 'Sbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @sbook }
      else
        format.html { render :edit }
        format.json { render json: @sbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sbooks/1
  # DELETE /sbooks/1.json
  def destroy
    @sbook.destroy
    respond_to do |format|
      format.html { redirect_to sbooks_url, notice: 'Sbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sbook
      @sbook = Sbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sbook_params
      params.require(:sbook).permit(:title, :description, :sdescription, :image, :previewo, :previewt, :previewth, :price, :offerprice, :coupon, :author, :publication, :saving, :off)
    end
end
