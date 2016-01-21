class SubjectDataController < UserController
  before_action :set_subject_datum, only: [:show, :edit, :update, :destroy]

  # GET /subject_data
  # GET /subject_data.json
  def index
    @subject_data = SubjectDatum.all
  end

  # GET /subject_data/1
  # GET /subject_data/1.json
  def show
  end

  # GET /subject_data/new
  def new
    @subject_datum = SubjectDatum.new
  end

  # GET /subject_data/1/edit
  def edit
  end

  # POST /subject_data
  # POST /subject_data.json
  def create
    @subject_datum = SubjectDatum.new(subject_datum_params)

    respond_to do |format|
      if @subject_datum.save
        format.html { redirect_to @subject_datum, notice: 'Subject datum was successfully created.' }
        format.json { render :show, status: :created, location: @subject_datum }
      else
        format.html { render :new }
        format.json { render json: @subject_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_data/1
  # PATCH/PUT /subject_data/1.json
  def update
    respond_to do |format|
      if @subject_datum.update(subject_datum_params)
        format.html { redirect_to @subject_datum, notice: 'Subject datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_datum }
      else
        format.html { render :edit }
        format.json { render json: @subject_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_data/1
  # DELETE /subject_data/1.json
  def destroy
    @subject_datum.destroy
    respond_to do |format|
      format.html { redirect_to subject_data_url, notice: 'Subject datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_datum
      @subject_datum = SubjectDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_datum_params
      params.require(:subject_datum).permit(:topic_img, :description, :start_time, :end_time, :subject, :template, :style, :type)
    end
end
