class AnalystScoresController < ApplicationController
  before_action :set_analyst_score, only: [:show, :edit, :update, :destroy]

  # GET /analyst_scores
  # GET /analyst_scores.json
  def index
    @analyst_scores = AnalystScore.all
  end

  # GET /analyst_scores/1
  # GET /analyst_scores/1.json
  def show
  end

  # GET /analyst_scores/new
  def new
    @analyst_score = AnalystScore.new
  end

  # GET /analyst_scores/1/edit
  def edit
  end

  # POST /analyst_scores
  # POST /analyst_scores.json
  def create
    @analyst_score = AnalystScore.new(analyst_score_params)

    respond_to do |format|
      if @analyst_score.save
        format.html { redirect_to @analyst_score, notice: 'Analyst score was successfully created.' }
        format.json { render action: 'show', status: :created, location: @analyst_score }
      else
        format.html { render action: 'new' }
        format.json { render json: @analyst_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analyst_scores/1
  # PATCH/PUT /analyst_scores/1.json
  def update
    respond_to do |format|
      if @analyst_score.update(analyst_score_params)
        format.html { redirect_to @analyst_score, notice: 'Analyst score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @analyst_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analyst_scores/1
  # DELETE /analyst_scores/1.json
  def destroy
    @analyst_score.destroy
    respond_to do |format|
      format.html { redirect_to analyst_scores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analyst_score
      @analyst_score = AnalystScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analyst_score_params
      params.require(:analyst_score).permit(:name, :score)
    end
end
