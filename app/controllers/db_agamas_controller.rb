class DbAgamasController < ApplicationController
  # GET /db_agamas
  # GET /db_agamas.json
  def index
    #@db_agamas = DbAgama.all
    if params[:search_kab].present?       
      @cbokab = DbAgama.select( :nama_kab ).uniq.order("nama_kab")
      @db_agamas = DbAgama.searchkec(params[:search_kab]) #.order("desa_kel")
      #@db_agamas = DbAgama.where( :nama_kec => params[:search_kab] )
    else
      @cbokab = DbAgama.select( :nama_kab ).uniq.order("nama_kab")
      @db_agamas = DbAgama.where('false')
    end
    #@db_agamas = DbAgama.search(params[:search_kab]).order("nama_kec")

    respond_to do |format|
      if params[:search_kab].present? 
        format.html { render :partial => 'result', :object => @db_agamas }
      else
        format.html
      end
      #format.json { render json: @db_agamas }
      #format.js
    end
  end

  # GET /db_agamas/1
  # GET /db_agamas/1.json
  def show
    @db_agama = DbAgama.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @db_agama }
    end
  end

  # GET /db_agamas/new
  # GET /db_agamas/new.json
  def new
    @db_agama = DbAgama.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @db_agama }
    end
  end

  # GET /db_agamas/1/edit
  def edit
    @db_agama = DbAgama.find(params[:id])
  end

  # POST /db_agamas
  # POST /db_agamas.json
  def create
    @db_agama = DbAgama.new(params[:db_agama])

    respond_to do |format|
      if @db_agama.save
        format.html { redirect_to @db_agama, notice: 'Db jmlh pddk was successfully created.' }
        format.json { render json: @db_agama, status: :created, location: @db_agama }
      else
        format.html { render action: "new" }
        format.json { render json: @db_agama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /db_agamas/1
  # PUT /db_agamas/1.json
  def update
    @db_agama = DbAgama.find(params[:id])

    respond_to do |format|
      if @db_agama.update_attributes(params[:db_agama])
        format.html { redirect_to @db_agama, notice: 'Db jmlh pddk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @db_agama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /db_agamas/1
  # DELETE /db_agamas/1.json
  def destroy
    @db_agama = DbAgama.find(params[:id])
    @db_agama.destroy

    respond_to do |format|
      format.html { redirect_to db_agamas_url }
      format.json { head :no_content }
    end
  end
end
