class DbStatuskawinsController < ApplicationController
  # GET /db_statuskawins
  # GET /db_statuskawins.json
  def index
    #@db_statuskawins = DbStatuskawin.all
    if params[:search_kab].present?       
      @cbokab = DbStatuskawin.select( :nama_kab ).uniq.order("nama_kab")
      @db_statuskawins = DbStatuskawin.searchkec(params[:search_kab]) #.order("desa_kel")
      #@db_statuskawins = DbStatuskawin.where( :nama_kec => params[:search_kab] )
    else
      @cbokab = DbStatuskawin.select( :nama_kab ).uniq.order("nama_kab")
      @db_statuskawins = DbStatuskawin.where('false')
    end
    #@db_statuskawins = DbStatuskawin.search(params[:search_kab]).order("nama_kec")

    respond_to do |format|
      if params[:search_kab].present? 
        format.html { render :partial => 'result', :object => @db_statuskawins }
      else
        format.html
      end
      #format.json { render json: @db_statuskawins }
      #format.js
    end
  end

  # GET /db_statuskawins/1
  # GET /db_statuskawins/1.json
  def show
    @db_statuskawin = DbStatuskawin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @db_statuskawin }
    end
  end

  # GET /db_statuskawins/new
  # GET /db_statuskawins/new.json
  def new
    @db_statuskawin = DbStatuskawin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @db_statuskawin }
    end
  end

  # GET /db_statuskawins/1/edit
  def edit
    @db_statuskawin = DbStatuskawin.find(params[:id])
  end

  # POST /db_statuskawins
  # POST /db_statuskawins.json
  def create
    @db_statuskawin = DbStatuskawin.new(params[:db_statuskawin])

    respond_to do |format|
      if @db_statuskawin.save
        format.html { redirect_to @db_statuskawin, notice: 'Db jmlh pddk was successfully created.' }
        format.json { render json: @db_statuskawin, status: :created, location: @db_statuskawin }
      else
        format.html { render action: "new" }
        format.json { render json: @db_statuskawin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /db_statuskawins/1
  # PUT /db_statuskawins/1.json
  def update
    @db_statuskawin = DbStatuskawin.find(params[:id])

    respond_to do |format|
      if @db_statuskawin.update_attributes(params[:db_statuskawin])
        format.html { redirect_to @db_statuskawin, notice: 'Db jmlh pddk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @db_statuskawin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /db_statuskawins/1
  # DELETE /db_statuskawins/1.json
  def destroy
    @db_statuskawin = DbStatuskawin.find(params[:id])
    @db_statuskawin.destroy

    respond_to do |format|
      format.html { redirect_to db_statuskawins_url }
      format.json { head :no_content }
    end
  end
end
