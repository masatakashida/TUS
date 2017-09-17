class TestreplypostsController < ApplicationController
  before_action :set_testreplypost, only: [:show, :edit, :update, :destroy]

  # GET /testreplyposts
  # GET /testreplyposts.json
  def index
    @testreplyposts = Testreplypost.all
  end

  # GET /testreplyposts/1
  # GET /testreplyposts/1.json
  def show
  end

  # GET /testreplyposts/new
  def new
    @testreplypost = Testreplypost.new
    @testposts = Testpost.all
  end

  # GET /testreplyposts/1/edit
  def edit
  end

  # POST /testreplyposts
  # POST /testreplyposts.json
  def create
    @testreplypost = Testreplypost.new(testreplypost_params)

    respond_to do |format|
      if @testreplypost.save
        format.html { redirect_to @testreplypost, notice: 'Testreplypost was successfully created.' }
        format.json { render :show, status: :created, location: @testreplypost }
      else
        format.html { render :new }
        format.json { render json: @testreplypost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testreplyposts/1
  # PATCH/PUT /testreplyposts/1.json
  def update
    respond_to do |format|
      if @testreplypost.update(testreplypost_params)
        format.html { redirect_to @testreplypost, notice: 'Testreplypost was successfully updated.' }
        format.json { render :show, status: :ok, location: @testreplypost }
      else
        format.html { render :edit }
        format.json { render json: @testreplypost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testreplyposts/1
  # DELETE /testreplyposts/1.json
  def destroy
    @testreplypost.destroy
    respond_to do |format|
      format.html { redirect_to testreplyposts_url, notice: 'Testreplypost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testreplypost
      @testreplypost = Testreplypost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testreplypost_params
      params.require(:testreplypost).permit(:text, :testpost_id)
    end
end
