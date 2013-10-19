class DbJmlhPddksController < ApplicationController
  # GET /db_jmlh_pddks
  # GET /db_jmlh_pddks.json
  def index
    #@db_jmlh_pddks = DbJmlhPddk.all
    if params[:search_kec].present?       
      @cbokec = DbJmlhPddk.all
      @db_jmlh_pddks = DbJmlhPddk.searchkec(params[:search_kec]) #.order("desa_kel")
      #@db_jmlh_pddks = DbJmlhPddk.where( :nama_kec => params[:search_kec] )
    else
      @cbokec = DbJmlhPddk.all
      @db_jmlh_pddks = DbJmlhPddk.where('false')
    end
    #@db_jmlh_pddks = DbJmlhPddk.search(params[:search_kec]).order("nama_kec")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @db_jmlh_pddks }
    end
  end

  # GET /db_jmlh_pddks/1
  # GET /db_jmlh_pddks/1.json
  def show
    @db_jmlh_pddk = DbJmlhPddk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @db_jmlh_pddk }
    end
  end

  # GET /db_jmlh_pddks/new
  # GET /db_jmlh_pddks/new.json
  def new
    @db_jmlh_pddk = DbJmlhPddk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @db_jmlh_pddk }
    end
  end

  # GET /db_jmlh_pddks/1/edit
  def edit
    @db_jmlh_pddk = DbJmlhPddk.find(params[:id])
  end

  # POST /db_jmlh_pddks
  # POST /db_jmlh_pddks.json
  def create
    @db_jmlh_pddk = DbJmlhPddk.new(params[:db_jmlh_pddk])

    respond_to do |format|
      if @db_jmlh_pddk.save
        format.html { redirect_to @db_jmlh_pddk, notice: 'Db jmlh pddk was successfully created.' }
        format.json { render json: @db_jmlh_pddk, status: :created, location: @db_jmlh_pddk }
      else
        format.html { render action: "new" }
        format.json { render json: @db_jmlh_pddk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /db_jmlh_pddks/1
  # PUT /db_jmlh_pddks/1.json
  def update
    @db_jmlh_pddk = DbJmlhPddk.find(params[:id])

    respond_to do |format|
      if @db_jmlh_pddk.update_attributes(params[:db_jmlh_pddk])
        format.html { redirect_to @db_jmlh_pddk, notice: 'Db jmlh pddk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @db_jmlh_pddk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /db_jmlh_pddks/1
  # DELETE /db_jmlh_pddks/1.json
  def destroy
    @db_jmlh_pddk = DbJmlhPddk.find(params[:id])
    @db_jmlh_pddk.destroy

    respond_to do |format|
      format.html { redirect_to db_jmlh_pddks_url }
      format.json { head :no_content }
    end
  end
end
