class ImporttodbsController < ApplicationController
  # GET /importtodbs
  # GET /importtodbs.json
  def index
    @importtodbs = Importtodb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @importtodbs }
    end
  end

  # GET /importtodbs/1
  # GET /importtodbs/1.json
  def show
    @importtodb = Importtodb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @importtodb }
    end
  end

  # GET /importtodbs/new
  # GET /importtodbs/new.json
  def new
    @importtodb = Importtodb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @importtodb }
    end
  end

  # GET /importtodbs/1/edit
  def edit
    @importtodb = Importtodb.find(params[:id])
  end

  # POST /importtodbs
  # POST /importtodbs.json
  def create
    @importtodb = Importtodb.new(params[:importtodb])

    respond_to do |format|
      if @importtodb.save
        format.html { redirect_to @importtodb, notice: 'Importtodb was successfully created.' }
        format.json { render json: @importtodb, status: :created, location: @importtodb }
      else
        format.html { render action: "new" }
        format.json { render json: @importtodb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /importtodbs/1
  # PUT /importtodbs/1.json
  def update
    @importtodb = Importtodb.find(params[:id])

    respond_to do |format|
      if @importtodb.update_attributes(params[:importtodb])
        format.html { redirect_to @importtodb, notice: 'Importtodb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @importtodb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /importtodbs/1
  # DELETE /importtodbs/1.json
  def destroy
    @importtodb = Importtodb.find(params[:id])
    @importtodb.destroy

    respond_to do |format|
      format.html { redirect_to importtodbs_url }
      format.json { head :no_content }
    end
  end

  def import_todb
    require "csv"
    @input_log = Importtodb.find(params[:importtodb_id])
    @filename = File.join(Rails.root.to_s, "/public" + "#{@input_log.fileupload.to_s}")
    n = 0      
    created_at = Time.now.strftime("%Y-%m-%d %H:%M:%S")
    
    CSV.foreach(@filename, {:col_sep => "\t"}) do |row|
      inserts = []
      n += 1
      next if n == 1 or row.join.blank?    
      
      sql_vals = [
        DbJmlhPddk.new(
          :kdkec => "#{row[2]}",
          :nama_kec => "#{row[3]}",
          :kd_kel => "#{row[4]}",
          :desa_kel => "#{row[5]}",
          :dak_lk => "#{row[6]}",
          :dak_pr => "#{row[7]}",
          :dak => "#{row[8]}",
          :kdkab => "#{row[0]}",
          :nama_kab => "#{row[1]}"
          )
      ]
      DbJmlhPddk.import(sql_vals)
           
    end
    @input_log.status = "Done"
    @input_log.save
    respond_to do |format|
      format.html { redirect_to importtodbs_url, notice: 'ND Analysis was successfully inserted.' }
    end   
  end

end
