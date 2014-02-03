class DbUmursController < ApplicationController
  # GET /db_umurs
  # GET /db_umurs.json
  def index
    #@db_umurs = DbUmur.all
    if params[:search_kab].present?       
      @cbokab = DbUmur.select( :nama_kab ).uniq.order("nama_kab")
      @db_umurs = DbUmur.searchkec(params[:search_kab]) #.order("desa_kel")
      #@db_umurs = DbUmur.where( :nama_kec => params[:search_kab] )
    else
      @cbokab = DbUmur.select( :nama_kab ).uniq.order("nama_kab")
      @db_umurs = DbUmur.where('false')
    end
    #@db_umurs = DbUmur.search(params[:search_kab]).order("nama_kec")

    respond_to do |format|
      if params[:search_kab].present? 
        format.html { render :partial => 'result', :object => @db_umurs }
      else
        format.html
      end
      #format.json { render json: @db_umurs }
      #format.js
    end
  end

  # GET /db_umurs/1
  # GET /db_umurs/1.json
  def show
    @db_umur = DbUmur.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @db_umur }
    end
  end

  # GET /db_umurs/new
  # GET /db_umurs/new.json
  def new
    @db_umur = DbUmur.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @db_umur }
    end
  end

  # GET /db_umurs/1/edit
  def edit
    @db_umur = DbUmur.find(params[:id])
  end

  # POST /db_umurs
  # POST /db_umurs.json
  def create
    @db_umur = DbUmur.new(params[:db_umur])

    respond_to do |format|
      if @db_umur.save
        format.html { redirect_to @db_umur, notice: 'Db jmlh pddk was successfully created.' }
        format.json { render json: @db_umur, status: :created, location: @db_umur }
      else
        format.html { render action: "new" }
        format.json { render json: @db_umur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /db_umurs/1
  # PUT /db_umurs/1.json
  def update
    @db_umur = DbUmur.find(params[:id])

    respond_to do |format|
      if @db_umur.update_attributes(params[:db_umur])
        format.html { redirect_to @db_umur, notice: 'Db jmlh pddk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @db_umur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /db_umurs/1
  # DELETE /db_umurs/1.json
  def destroy
    @db_umur = DbUmur.find(params[:id])
    @db_umur.destroy

    respond_to do |format|
      format.html { redirect_to db_umurs_url }
      format.json { head :no_content }
    end
  end
end
