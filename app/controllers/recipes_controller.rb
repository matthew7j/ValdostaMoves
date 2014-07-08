class RecipesController < ApplicationController
  load_and_authorize_resource except: :create
  authorize_resource only: :create
  before_filter :find_category
  
  # GET /recipes
  # GET /recipes.json
  def index
   
    @recipes = @category.recipes.paginate(page: params[:page], per_page: 4)
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    @recipe.category = @category

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to category_recipe_path(@category, @recipe), notice: 'Recipe was successfully created.' }
        format.mobile { redirect_to category_recipe_path(@category, @recipe), notice: 'Recipe ws successfully created.' }
        format.json { render action: 'show', status: :created, location: @recipe }
      else
        puts @recipe.errors.full_messages
        format.html { render action: 'new' }
        format.mobile { render action: 'new' }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to category_recipe_path(@category, @recipe), notice: 'Recipe was successfully updated.' }
        format.mobile { redirect_to category_recipe_pathO(@category, @recipe), notice: 'Recipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.mobile { render action 'edit' }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to category_recipes_path(@category)}
      format.mobile { redirect_to category_recipes_path(@category)}
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:name, :description, :instructions, :imagesrc)
    end
    
    def find_category
      @category = Category.find(params[:category_id])
    end
    
end
