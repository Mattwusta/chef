class OrderlistsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  # GET /orderlists
  # GET /orderlists.json
  def index
    @orderlists = Orderlist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orderlists }
    end
  end

  # GET /orderlists/1
  # GET /orderlists/1.json
  def show
    @orderlist = Orderlist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orderlist }
    end
  end

  # GET /orderlists/new
  # GET /orderlists/new.json
  def new
    @orderlist = current_user.orderlists.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orderlist }
    end
  end

  # GET /orderlists/1/edit
  def edit
    @orderlist =current_user.orderlists.find(params[:id])
  end

  # POST /orderlists
  # POST /orderlists.json
  def create
    @orderlist = current_user.orderlists.new(params[:pin])

    respond_to do |format|
      if @orderlist.save
        format.html { redirect_to @orderlist, notice: 'Orderlist was successfully created.' }
        format.json { render json: @orderlist, status: :created, location: @orderlist }
      else
        format.html { render action: "new" }
        format.json { render json: @orderlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orderlists/1
  # PUT /orderlists/1.json
  def update
    @orderlist = current_user.orderlists.find(params[:id])

    respond_to do |format|
      if @orderlist.update_attributes(params[:orderlist])
        format.html { redirect_to @orderlist, notice: 'Orderlist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orderlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderlists/1
  # DELETE /orderlists/1.json
  def destroy
    @orderlist = current_user.orderlists.find(params[:id])
    @orderlist.destroy

    respond_to do |format|
      format.html { redirect_to orderlists_url }
      format.json { head :no_content }
    end
  end
end
