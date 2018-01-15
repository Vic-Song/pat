class SubOptionsController < ApplicationController
  before_action :set_sub_option, only: [:show, :edit, :update, :destroy]

  # GET /sub_options
  # GET /sub_options.json
  def index
    @sub_options = SubOption.all
  end

  # GET /sub_options/1
  # GET /sub_options/1.json
  def show
  end

  # GET /sub_options/new
  def new
    @sub_option = SubOption.new
  end

  # GET /sub_options/1/edit
  def edit
  end

  # POST /sub_options
  # POST /sub_options.json
  def create
    @sub_option = SubOption.new(sub_option_params)

    respond_to do |format|
      if @sub_option.save
        format.html { redirect_to home_admin_path, notice: 'Sub option was successfully created.' }
        format.json { render :show, status: :created, location: @sub_option }
      else
        format.html { render :new }
        format.json { render json: @sub_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_options/1
  # PATCH/PUT /sub_options/1.json
  def update
    respond_to do |format|
      if @sub_option.update(sub_option_params)
        format.html { redirect_to home_admin_path, notice: 'Sub option was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_option }
      else
        format.html { render :edit }
        format.json { render json: @sub_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_options/1
  # DELETE /sub_options/1.json
  def destroy
    @sub_option.destroy
    respond_to do |format|
      format.html { redirect_to home_admin_path, notice: 'Sub option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_option
      @sub_option = SubOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_option_params
      params.require(:sub_option).permit(:title, :question_id)
    end
end
