class EvaluationsController < ApplicationController
  before_action :set_evaluation, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:create, :update, :destroy]
  before_action :set_teacher, only: [:create, :update, :destroy]

  # GET /evaluations
  # GET /evaluations.json
  def index
    @evaluations = Evaluation.all

    render json: @evaluations
  end

  # GET /evaluations/1
  # GET /evaluations/1.json
  def show
    render json: @evaluation
  end

  # POST /evaluations
  # POST /evaluations.json
  def create
    if @teacher
      @evaluation = Evaluation.new(evaluation_params)

      if @evaluation.save
        render json: @evaluation, status: :created, location: @evaluation
      else
        render json: @evaluation.errors, status: :unprocessable_entity
      end
    else
      head :unauthorized
    end
  end

  # PATCH/PUT /evaluations/1
  # PATCH/PUT /evaluations/1.json
  def update
    @evaluation = Evaluation.find(params[:id])

    if @evaluation.update(evaluation_params)
      head :no_content
    else
      render json: @evaluation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /evaluations/1
  # DELETE /evaluations/1.json
  def destroy
    @evaluation.destroy

    head :no_content
  end

  private

    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

    def set_teacher
      if current_user.profileable_type == "Teacher"
        @teacher = current_user.profileable
      end
    end

    def evaluation_params
      params.require(:evaluation).permit(:grammar, :vocabulary, :structure, :spelling, :creativity, :notes, :prompt_response_id, :teacher_id)
    end
end
