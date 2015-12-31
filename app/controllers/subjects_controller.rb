class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]

  # GET /subjects
  # GET /subjects.json
  def index
    @subjects = Subject.all
  end

  # GET /subjects/1
  # GET /subjects/1.json
  def show
     @options = Option.where(subject: @subject)
     @option = Option.new
  end

  # GET /subjects/new
  def new
    @subject = Subject.new
    @subject_datum = SubjectDatum.new
    #@subject.subject_datum.build
  end

  # GET /subjects/1/edit
  def edit
  end

  # POST /subjects
  # POST /subjects.json
  def create
    @subject = Subject.new(subject_params)
    binding.pry
    @subject_data = SubjectDatum.new(subject_params[:subject_datum])
    respond_to do |format|
      if @subject.save 
        if @subject_data.save
          format.html { redirect_to @subject, notice: 'Subject was successfully created.' }
          format.json { render :show, status: :created, location: @subject }
        else
          @subject.delete
          format.html { render :new }
          format.json { render json: @subject_data.errors, status: :unprocessable_entity }
        end
      else
        format.html { render :new }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjects/1
  # PATCH/PUT /subjects/1.json
  def update
    respond_to do |format|
      if @subject.update(subject_params)
        format.html { redirect_to @subject, notice: 'Subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject }
      else
        format.html { render :edit }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.json
  def destroy
    @subject.destroy
    respond_to do |format|
      format.html { redirect_to subjects_url, notice: 'Subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @subject = Subject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_params
      params.require(:subject).permit(:name, :user_id, :topic, :subject_datum)
    end

end
