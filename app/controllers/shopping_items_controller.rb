class ShoppingItemsController < ApplicationController
  before_filter :authenticate_user!
  #before_filter :check_admin, :except => [:index]
  def index
    @shopping_items = ShoppingItem.all
    respond_to do |format|
      format.html 
      format.json {render json: @shopping_items}
    end
  end
  def show
    @shopping_item = ShoppingItem.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @shopping_item}
    end
  end
  def new 
    @shopping_item = ShoppingItem.new
    respond_to do |format|
      format.html
      format.json {render json: @shopping_item}
    end
  end
  def edit 
    @shopping_item = ShoppingItem.find(params[:id])
  end
  def create
    @shopping_item = ShoppingItem.new(params[:shopping_item])
    respond_to do |format|
      if @shopping_item.save
        format.html {redirect_to @shopping_item, notice: 'Shopping item was successfully created.'}
        format.json {render json: @shopping_item, status: :created, location: @shopping_item} 
      else
        format.html { render action: "new" }
        format.json { render json: @shopping_item.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    @shopping_item = ShoppingItem.find(params[:id])

    respond_to do |format|
      if @shopping_item.update_attributes(params[:shopping_item])
        format.html { redirect_to @shopping_item, notice: 'Shopping item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shopping_item.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @shopping_item = ShoppingItem.find(params[:id])
    @shopping_item.destroy

    respond_to do |format|
      format.html { redirect_to shopping_items_url }
      format.json { head :no_content }
    end
  end
end
