class EmploymentsController < ApplicationController
  before_action :set_employment, only: %i[ show edit update destroy ]

  def index
    @employments = Employment.all
  end

  def show
  end

  def new
    @employment = Employment.new
  end

  def edit
  end

  def create
    @employment = Employment.new(employment_params)

    respond_to do |format|
      if @employment.save
        format.html { redirect_to employment_url(@employment), notice: "Employment was successfully created." }
        format.json { render :show, status: :created, location: @employment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @employment.update(employment_params)
        format.html { redirect_to employment_url(@employment), notice: "Employment was successfully updated." }
        format.json { render :show, status: :ok, location: @employment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @employment.destroy

    respond_to do |format|
      format.html { redirect_to employments_url, notice: "Employment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_employment
      @employment = Employment.find(params[:id])
    end

    def employment_params
      params.require(:employment).permit(:employer, :date_started, :date_ended)
    end
end
