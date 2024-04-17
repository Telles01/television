class SchemesController < ApplicationController
  before_action :set_scheme, only: %i[ show edit update destroy ]

  # GET /schemes
  def index
    @schemes = Scheme.all
  end

  # GET /schemes/1
  def show
  end

  # GET /schemes/new
  def new
    @scheme = Scheme.new
  end

  # GET /schemes/1/edit
  def edit
  end

  # POST /schemes
  def create
    @scheme = Scheme.new(scheme_params)

    if @scheme.save
      redirect_to @scheme, notice: "Scheme was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /schemes/1
  def update
    if @scheme.update(scheme_params)
      redirect_to @scheme, notice: "Scheme was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /schemes/1
  def destroy
    @scheme.destroy
    redirect_to schemes_url, notice: "Scheme was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scheme
      @scheme = Scheme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scheme_params
      params.require(:scheme).permit(:name, :address, :rating)
    end
end
