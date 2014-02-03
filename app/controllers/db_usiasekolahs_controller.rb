class DbUsiasekolahsController < ApplicationController
  # GET /db_usiasekolahs
  # GET /db_usiasekolahs.json
  def index
    #@db_usiasekolahs = DbUsiasekolah.all
    if params[:search_kab].present?       
      @cbokab = DbUsiasekolah.select( :nama_kab ).uniq.order("nama_kab")
      @db_usiasekolahs = DbUsiasekolah.searchkec(params[:search_kab]) #.order("desa_kel")
      #@db_usiasekolahs = DbUsiasekolah.where( :nama_kec => params[:search_kab] )
    else
      @cbokab = DbUsiasekolah.select( :nama_kab ).uniq.order("nama_kab")
      @db_usiasekolahs = DbUsiasekolah.where('false')
    end
    #@db_usiasekolahs = DbUsiasekolah.search(params[:search_kab]).order("nama_kec")

    respond_to do |format|
      if params[:search_kab].present? 
        format.html { render :partial => 'result', :object => @db_usiasekolahs }
      else
        format.html
      end
      #format.json { render json: @db_usiasekolahs }
      #format.js
    end
  end

  # GET /db_usiasekolahs/1
  # GET /db_usiasekolahs/1.json
  def show
    @db_usiasekolah = DbUsiasekolah.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @db_usiasekolah }
    end
  end

  # GET /db_usiasekolahs/new
  # GET /db_usiasekolahs/new.json
  def new
    @db_usiasekolah = DbUsiasekolah.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @db_usiasekolah }
    end
  end

  # GET /db_usiasekolahs/1/edit
  def edit
    @db_usiasekolah = DbUsiasekolah.find(params[:id])
  end

  # POST /db_usiasekolahs
  # POST /db_usiasekolahs.json
  def create
    @db_usiasekolah = DbUsiasekolah.new(params[:db_usiasekolah])

    respond_to do |format|
      if @db_usiasekolah.save
        format.html { redirect_to @db_usiasekolah, notice: 'Db jmlh pddk was successfully created.' }
        format.json { render json: @db_usiasekolah, status: :created, location: @db_usiasekolah }
      else
        format.html { render action: "new" }
        format.json { render json: @db_usiasekolah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /db_usiasekolahs/1
  # PUT /db_usiasekolahs/1.json
  def update
    @db_usiasekolah = DbUsiasekolah.find(params[:id])

    respond_to do |format|
      if @db_usiasekolah.update_attributes(params[:db_usiasekolah])
        format.html { redirect_to @db_usiasekolah, notice: 'Db jmlh pddk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @db_usiasekolah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /db_usiasekolahs/1
  # DELETE /db_usiasekolahs/1.json
  def destroy
    @db_usiasekolah = DbUsiasekolah.find(params[:id])
    @db_usiasekolah.destroy

    respond_to do |format|
      format.html { redirect_to db_usiasekolahs_url }
      format.json { head :no_content }
    end
  end
end
