class ObjOptionsController < ApplicationController
  before_action :set_obj_option, only: [:show, :edit, :update, :destroy]

  # GET /obj_options
  # GET /obj_options.json
  def index
    @obj_options = ObjOption.all
  end

  # GET /obj_options/1
  # GET /obj_options/1.json
  def show
  end

  # GET /obj_options/new
  def new
    @obj_option = ObjOption.new
  end

  # GET /obj_options/1/edit
  def edit
  end

  # POST /obj_options
  # POST /obj_options.json
  def create
    @obj_option = ObjOption.new(obj_option_params)

    respond_to do |format|
      if @obj_option.save
        format.html { redirect_to home_admin_path, notice: 'Obj option was successfully created.' }
        format.json { render :show, status: :created, location: @obj_option }
      else
        format.html { render :new }
        format.json { render json: @obj_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obj_options/1
  # PATCH/PUT /obj_options/1.json
  def update
    respond_to do |format|
      if @obj_option.update(obj_option_params)
        format.html { redirect_to home_admin_path, notice: 'Obj option was successfully updated.' }
        format.json { render :show, status: :ok, location: @obj_option }
      else
        format.html { render :edit }
        format.json { render json: @obj_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obj_options/1
  # DELETE /obj_options/1.json
  def destroy
    @obj_option.destroy
    respond_to do |format|
      format.html { redirect_to home_admin_path, notice: 'Obj option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obj_option
      @obj_option = ObjOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obj_option_params
      params.require(:obj_option).permit(:title, :question_id)
    end
end
