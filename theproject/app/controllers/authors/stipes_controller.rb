module Authors
	class StipesController < AuthorController
  before_action :set_stipe, only: [:show, :edit, :update, :destroy]

  # GET /stipes
  # GET /stipes.json
  def index
    @stipes = current_author.stipes.all.order("created_at DESC")
  end

  # GET /stipes/1
  # GET /stipes/1.json
  def show
  end

  # GET /stipes/new
  def new
    @stipe = current_author.stipes.new
  end

  # GET /stipes/1/edit
  def edit
  end

  # POST /stipes
  # POST /stipes.json
  def create
    @stipe = current_author.stipes.new(stipe_params)

    respond_to do |format|
      if @stipe.save
        format.html { redirect_to authors_stipe_path(@stipe), notice: 'Stipe was successfully created.' }
        format.json { render :show, status: :created, location: @stipe }
      else
        format.html { render :new }
        format.json { render json: @stipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stipes/1
  # PATCH/PUT /stipes/1.json
  def update
    respond_to do |format|
      if @stipe.update(stipe_params)
        format.html { redirect_to authors_stipe_path(@stipe), notice: 'Stipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @stipe }
      else
        format.html { render :edit }
        format.json { render json: @stipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stipes/1
  # DELETE /stipes/1.json
  def destroy
    @stipe.destroy
    respond_to do |format|
      format.html { redirect_to authors_stipes_url, notice: 'Stipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stipe
      @stipe = current_author.stipes.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stipe_params
      params.require(:stipe).permit(:title, :body, :description, :image, :tag_list)
    end
end
end