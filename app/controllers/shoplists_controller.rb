class ShoplistsController < ApplicationController
  # GET /shoplists
  # GET /shoplists.json
  def index
    @shoplists = Shoplist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shoplists }
    end
  end

  # GET /shoplists/1
  # GET /shoplists/1.json
  def show
    @shoplist = Shoplist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shoplist }
    end
  end

  # GET /shoplists/new
  # GET /shoplists/new.json
  def new
    @shoplist = Shoplist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shoplist }
    end
  end

  # GET /shoplists/1/edit
  def edit
    @shoplist = Shoplist.find(params[:id])
  end

  # POST /shoplists
  # POST /shoplists.json
  def create
    @shoplist = Shoplist.new(params[:shoplist])

    respond_to do |format|
      if @shoplist.save
        format.html { redirect_to @shoplist, notice: 'Shoplist was successfully created.' }
        format.json { render json: @shoplist, status: :created, location: @shoplist }
      else
        format.html { render action: "new" }
        format.json { render json: @shoplist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shoplists/1
  # PUT /shoplists/1.json
  def update
    @shoplist = Shoplist.find(params[:id])

    respond_to do |format|
      if @shoplist.update_attributes(params[:shoplist])
        format.html { redirect_to @shoplist, notice: 'Shoplist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shoplist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoplists/1
  # DELETE /shoplists/1.json
  def destroy
    @shoplist = Shoplist.find(params[:id])
    @shoplist.destroy

    respond_to do |format|
      format.html { redirect_to shoplists_url }
      format.json { head :no_content }
    end
  end
end
