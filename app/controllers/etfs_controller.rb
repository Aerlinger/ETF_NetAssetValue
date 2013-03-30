class EtfsController < ApplicationController
  # GET /etfs
  # GET /etfs.json
  def index
    @etfs = Etf.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @etfs }
    end
  end

  # GET /etfs/1
  # GET /etfs/1.json
  def show
    @etf = Etf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @etf }
    end
  end

  # GET /etfs/new
  # GET /etfs/new.json
  def new
    @etf = Etf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @etf }
    end
  end

  # GET /etfs/1/edit
  def edit
    @etf = Etf.find(params[:id])
  end

  # POST /etfs
  # POST /etfs.json
  def create
    @etf = Etf.new(params[:etf])

    respond_to do |format|
      if @etf.save
        format.html { redirect_to @etf, notice: 'Etf was successfully created.' }
        format.json { render json: @etf, status: :created, location: @etf }
      else
        format.html { render action: "new" }
        format.json { render json: @etf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /etfs/1
  # PUT /etfs/1.json
  def update
    @etf = Etf.find(params[:id])

    respond_to do |format|
      if @etf.update_attributes(params[:etf])
        format.html { redirect_to @etf, notice: 'Etf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @etf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etfs/1
  # DELETE /etfs/1.json
  def destroy
    @etf = Etf.find(params[:id])
    @etf.destroy

    respond_to do |format|
      format.html { redirect_to etfs_url }
      format.json { head :no_content }
    end
  end
end
