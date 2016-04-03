class PromptsController < ApplicationController
  before_action :set_prompt, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:create]

  # GET /prompts
  # GET /prompts.json
  def index
    @prompts = Prompt.all

    render json: @prompts
  end

  # GET /prompts/1
  # GET /prompts/1.json
  def show
    render json: @prompt
  end

  # POST /prompts
  # POST /prompts.json
  def create
    if current_user.teacher
      @prompt = current_user.prompts.new(prompt_params)

      if @prompt.save
        render json: @prompt, status: :created, location: @prompt
      else
        render json: @prompt.errors, status: :unprocessable_entity
      end
    else
      head :unauthorized
    end
  end

  # PATCH/PUT /prompts/1
  # PATCH/PUT /prompts/1.json
  def update
    @prompt = Prompt.find(params[:id])

    if @prompt.update(prompt_params)
      head :no_content
    else
      render json: @prompt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prompts/1
  # DELETE /prompts/1.json
  def destroy
    @prompt.destroy

    head :no_content
  end

  private

    def set_prompt
      @prompt = Prompt.find(params[:id])
    end

    def prompt_params
      params.require(:prompt).permit(:title, :text, :user_id)
    end
end
