class TestPunditsController < ApplicationController
  before_action :set_test_pundit, only: %i[ show edit update destroy ]

  # GET /test_pundits or /test_pundits.json
  def index
    @test_pundits = TestPundit.all
  end

  # GET /test_pundits/1 or /test_pundits/1.json
  def show
    @test = params.fetch(:test_pundit, :id)
    @test_pundits = authorize :test_pundit
  end

  # GET /test_pundits/new
  def new
    @test_pundit = TestPundit.new
  end

  # GET /test_pundits/1/edit
  def edit
  end

  # POST /test_pundits or /test_pundits.json
  def create
    @test_pundit = TestPundit.new(test_pundit_params)

    respond_to do |format|
      if @test_pundit.save
        format.html { redirect_to test_pundit_url(@test_pundit), notice: "Test pundit was successfully created." }
        format.json { render :show, status: :created, location: @test_pundit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @test_pundit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_pundits/1 or /test_pundits/1.json
  def update
    respond_to do |format|
      if @test_pundit.update(test_pundit_params)
        format.html { redirect_to test_pundit_url(@test_pundit), notice: "Test pundit was successfully updated." }
        format.json { render :show, status: :ok, location: @test_pundit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @test_pundit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_pundits/1 or /test_pundits/1.json
  def destroy
    @test_pundit.destroy

    respond_to do |format|
      format.html { redirect_to test_pundits_url, notice: "Test pundit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_pundit
      @test_pundit = TestPundit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test_pundit_params
      params.fetch(:test_pundit, {})
    end
end
