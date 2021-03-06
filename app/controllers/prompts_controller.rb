class PromptsController < ApplicationController
  before_action :set_prompt, only: [:show, :update, :destroy]
  before_action :authenticate, only: [:create, :index, :update, :destroy]
  before_action :set_teacher, only: [:create, :index, :update, :destroy]

  # GET /prompts
  # GET /prompts.json
  def index
    if @teacher
      @prompts = @teacher.prompts
    else
      @prompts = Prompt.all
    end
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
    if @teacher
      @prompt = @teacher.prompts.new(prompt_params)

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

    def set_teacher
      if current_user.profileable_type == "Teacher"
        @teacher = current_user.profileable
      end
    end

    def prompt_params
      params.require(:prompt).permit(:title, :text)
    end
end
