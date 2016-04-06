class PromptResponsesController < ApplicationController
  before_action :set_prompt_response, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:create, :index, :update, :destroy]
  before_action :set_student, only: [:create, :index, :update, :destroy]

  # GET /prompt_responses
  # GET /prompt_responses.json
  def index
    if @student
      @prompt_responses = @student.prompt_responses
    else
      @prompt_responses = PromptResponse.all
    end

    render json: @prompt_responses
  end

  # GET /prompt_responses/1
  # GET /prompt_responses/1.json
  def show
    render json: @prompt_response
  end

  # POST /prompt_responses
  # POST /prompt_responses.json
  def create
    if @student
      @prompt_response = @student.prompt_responses.new(prompt_response_params)

      if @prompt_response.save
        render json: @prompt_response, status: :created, location: @prompt_response
      else
        render json: @prompt_response.errors, status: :unprocessable_entity
      end
    else
      head :unauthorized
    end
  end

  # PATCH/PUT /prompt_responses/1
  # PATCH/PUT /prompt_responses/1.json
  def update
    @prompt_response = PromptResponse.find(params[:id])

    if @prompt_response.update(prompt_response_params)
      head :no_content
    else
      render json: @prompt_response.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prompt_responses/1
  # DELETE /prompt_responses/1.json
  def destroy
    @prompt_response.destroy

    head :no_content
  end

  private

    def set_prompt_response
      @prompt_response = PromptResponse.find(params[:id])
    end

    def set_student
      if current_user.profileable_type == "Student"
        @student = current_user.profileable
      end
    end

    def prompt_response_params
      params.require(:prompt_response).permit(:text, :prompt_id)
    end
end
