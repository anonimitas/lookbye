module Content
	class StipesController < ContentController
    
   def tag_cloud
    @tags = Stipe.tag_counts_on(:tags)
  end 
  # GET /stipes
  # GET /stipes.json
  def index
    if params[:tag].present? 
    @stipes = Stipe.tagged_with(params[:tag])
else
@stipes = Stipe.all.order("created_at DESC")
end
end

  # GET /stipes/1
  # GET /stipes/1.json
  def show
    @stipe = Stipe.friendly.find(params[:id])
   end
  end
end