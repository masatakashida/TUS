class TestpostsController < ApplicationController
  before_action :set_testpost, only: [:show, :edit, :update, :destroy]

  # GET /testposts
  # GET /testposts.json
  def index
    @testposts = Testpost.all
  end

  # GET /testposts/1
  # GET /testposts/1.json
  def show
    @testreplyposts = @testpost.testreplyposts.all
  end

  # GET /testposts/new
  def new
    @testpost = Testpost.new
  end

  # GET /testposts/1/edit
  def edit
  end

  # POST /testposts
  # POST /testposts.json
  def create
    @testpost = Testpost.new(testpost_params)

    respond_to do |format|
      if @testpost.save
        format.html { redirect_to @testpost, notice: 'Testpost was successfully created.' }
        format.json { render :show, status: :created, location: @testpost }
      else
        format.html { render :new }
        format.json { render json: @testpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testposts/1
  # PATCH/PUT /testposts/1.json
  def update
    respond_to do |format|
      if @testpost.update(testpost_params)
        format.html { redirect_to @testpost, notice: 'Testpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @testpost }
      else
        format.html { render :edit }
        format.json { render json: @testpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testposts/1
  # DELETE /testposts/1.json
  def destroy
    @testpost.destroy
    respond_to do |format|
      format.html { redirect_to testposts_url, notice: 'Testpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testpost
      @testpost = Testpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testpost_params
      params.require(:testpost).permit(:text)
    end
end
