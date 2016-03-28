class DishesController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]

  # GET /dishes
  # GET /dishes.json
  def index
    if params.key?(:id)
      redirect_to dish_url(id: params[:id], search: params[:search])
    else
      redirect_to dish_url(id: 1, search: params[:search])
    end
    # raise params.inspect
    # if params.key?(:search)
    #   @dishes = Dish.where("name LIKE ?", "%#{params[:search]}%")
    # else
    #   @dishes = Dish.all
    # end
    # @images = Hash.new
    # @components = Hash.new
    # @dishes.each do |dish|
    #   @images["#{dish.id}"] = Attachment.where(dish_id: dish.id).first.image
    #   @components["#{dish.idindex.html.haml}"] = Component.where(dish_id: dish.id)
    # end
  end

  # GET /dishes/1
  # GET /dishes/1.json
  def show
    # raise params.inspect
    if params.key?(:search)
      # raise params.inspect
      @dishes = Dish.where("name LIKE ?", "%#{params[:search]}%").order(:id)
    else
      @dishes = Dish.all.order(:id)
    end
    @images = Hash.new
    @components = Hash.new
    @images["#{@dish.id}"] = Attachment.where(dish_id: @dish.id).first.image
    @components["#{@dish.id}"] = Component.where(dish_id: @dish.id)
  end

  # GET /dishes/new
  def new
    @dish = Dish.new
    @dish.components.build
  end

  # GET /dishes/1/edit
  def edit
  end

  # POST /dishes
  # POST /dishes.json
  def create
    @dish = Dish.new(dish_params)

    respond_to do |format|
      if @dish.save
        format.html { redirect_to @dish, notice: 'Dish was successfully created.' }
        format.json { render :show, status: :created, location: @dish }
      else
        format.html { render :new }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dishes/1
  # PATCH/PUT /dishes/1.json
  def update
    respond_to do |format|
      if @dish.update(dish_params)
        format.html { redirect_to @dish, notice: 'Dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @dish }
      else
        format.html { render :edit }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dishes/1
  # DELETE /dishes/1.json
  def destroy
    @dish.destroy
    respond_to do |format|
      format.html { redirect_to dishes_url, notice: 'Dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish
      @dish = Dish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_params
      params.require(:dish).permit(:name, :time_for_cook, :instructions, :appliances_used, components_attributes: [:id, :dish, :amount, :measure_unit, :ingredient, :_destroy])
    end
end
