class CategoriesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :check_admin
  def index
    @categories = Category.all
    respond_to do |format|
      format.html 
      format.json {render json: @categories}
    end
  end
  def show
    @category = Category.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @category}
    end
  end
  def new 
    @category = Category.new
    respond_to do |format|
      format.html
      format.json {render json: @category}
    end
  end
  def edit 
    @category = Category.find(params[:id])
  end
  def create
    @category = Category.new(params[:category])
    respond_to do |format|
      if @category.save
        format.html {redirect_to @category, notice: 'Category was successfully created.'}
        format.json {render json: @category, status: :created, location: @category} 
      else
        format.html { render action: "new" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to categories_url }
      format.json { head :no_content }
    end
  end
end
