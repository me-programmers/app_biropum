class DbPendidikansController < ApplicationController
  # GET /db_pendidikans
  # GET /db_pendidikans.json
  def index
    #@db_pendidikans = DbPendidikan.all
    if params[:search_kab].present?       
      @cbokab = DbPendidikan.select( :nama_kab ).uniq.order("nama_kab")
      @db_pendidikans = DbPendidikan.searchkec(params[:search_kab]) #.order("desa_kel")
      #@db_pendidikans = DbPendidikan.where( :nama_kec => params[:search_kab] )
    else
      @cbokab = DbPendidikan.select( :nama_kab ).uniq.order("nama_kab")
      @db_pendidikans = DbPendidikan.where('false')
    end
    #@db_pendidikans = DbPendidikan.search(params[:search_kab]).order("nama_kec")

    respond_to do |format|
      if params[:search_kab].present? 
        format.html { render :partial => 'result', :object => @db_pendidikans }
      else
        format.html
      end
      #format.json { render json: @db_pendidikans }
      #format.js
    end
  end

  # GET /db_pendidikans/1
  # GET /db_pendidikans/1.json
  def show
    @db_pendidikan = DbPendidikan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @db_pendidikan }
    end
  end

  # GET /db_pendidikans/new
  # GET /db_pendidikans/new.json
  def new
    @db_pendidikan = DbPendidikan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @db_pendidikan }
    end
  end

  # GET /db_pendidikans/1/edit
  def edit
    @db_pendidikan = DbPendidikan.find(params[:id])
  end

  # POST /db_pendidikans
  # POST /db_pendidikans.json
  def create
    @db_pendidikan = DbPendidikan.new(params[:db_pendidikan])

    respond_to do |format|
      if @db_pendidikan.save
        format.html { redirect_to @db_pendidikan, notice: 'Db jmlh pddk was successfully created.' }
        format.json { render json: @db_pendidikan, status: :created, location: @db_pendidikan }
      else
        format.html { render action: "new" }
        format.json { render json: @db_pendidikan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /db_pendidikans/1
  # PUT /db_pendidikans/1.json
  def update
    @db_pendidikan = DbPendidikan.find(params[:id])

    respond_to do |format|
      if @db_pendidikan.update_attributes(params[:db_pendidikan])
        format.html { redirect_to @db_pendidikan, notice: 'Db jmlh pddk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @db_pendidikan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /db_pendidikans/1
  # DELETE /db_pendidikans/1.json
  def destroy
    @db_pendidikan = DbPendidikan.find(params[:id])
    @db_pendidikan.destroy

    respond_to do |format|
      format.html { redirect_to db_pendidikans_url }
      format.json { head :no_content }
    end
  end
end
