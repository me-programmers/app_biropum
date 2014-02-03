class DbPekerjaansController < ApplicationController
  # GET /db_pekerjaans
  # GET /db_pekerjaans.json
  def index
    #@db_pekerjaans = DbPekerjaan.all
    if params[:search_kab].present?       
      @cbokab = DbPekerjaan.select( :nama_kab ).uniq.order("nama_kab")
      @db_pekerjaans = DbPekerjaan.searchkec(params[:search_kab]) #.order("desa_kel")
      #@db_pekerjaans = DbPekerjaan.where( :nama_kec => params[:search_kab] )
    else
      @cbokab = DbPekerjaan.select( :nama_kab ).uniq.order("nama_kab")
      @db_pekerjaans = DbPekerjaan.where('false')
    end
    #@db_pekerjaans = DbPekerjaan.search(params[:search_kab]).order("nama_kec")

    respond_to do |format|
      if params[:search_kab].present? 
        format.html { render :partial => 'result', :object => @db_pekerjaans }
      else
        format.html
      end
      #format.json { render json: @db_pekerjaans }
      #format.js
    end
  end

  # GET /db_pekerjaans/1
  # GET /db_pekerjaans/1.json
  def show
    @db_pekerjaan = DbPekerjaan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @db_pekerjaan }
    end
  end

  # GET /db_pekerjaans/new
  # GET /db_pekerjaans/new.json
  def new
    @db_pekerjaan = DbPekerjaan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @db_pekerjaan }
    end
  end

  # GET /db_pekerjaans/1/edit
  def edit
    @db_pekerjaan = DbPekerjaan.find(params[:id])
  end

  # POST /db_pekerjaans
  # POST /db_pekerjaans.json
  def create
    @db_pekerjaan = DbPekerjaan.new(params[:db_pekerjaan])

    respond_to do |format|
      if @db_pekerjaan.save
        format.html { redirect_to @db_pekerjaan, notice: 'Db jmlh pddk was successfully created.' }
        format.json { render json: @db_pekerjaan, status: :created, location: @db_pekerjaan }
      else
        format.html { render action: "new" }
        format.json { render json: @db_pekerjaan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /db_pekerjaans/1
  # PUT /db_pekerjaans/1.json
  def update
    @db_pekerjaan = DbPekerjaan.find(params[:id])

    respond_to do |format|
      if @db_pekerjaan.update_attributes(params[:db_pekerjaan])
        format.html { redirect_to @db_pekerjaan, notice: 'Db jmlh pddk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @db_pekerjaan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /db_pekerjaans/1
  # DELETE /db_pekerjaans/1.json
  def destroy
    @db_pekerjaan = DbPekerjaan.find(params[:id])
    @db_pekerjaan.destroy

    respond_to do |format|
      format.html { redirect_to db_pekerjaans_url }
      format.json { head :no_content }
    end
  end
end
