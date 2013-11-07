class FotoGalerisController < ApplicationController
  # GET /foto_galeris
  # GET /foto_galeris.json
  def index
    @foto_galeris = FotoGaleri.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foto_galeris }
    end
  end

  # GET /foto_galeris/1
  # GET /foto_galeris/1.json
  def show
    @foto_galeri = FotoGaleri.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @foto_galeri }
    end
  end

  # GET /foto_galeris/new
  # GET /foto_galeris/new.json
  def new
    @foto_galeri = FotoGaleri.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @foto_galeri }
    end
  end

  # GET /foto_galeris/1/edit
  def edit
    @foto_galeri = FotoGaleri.find(params[:id])
  end

  # POST /foto_galeris
  # POST /foto_galeris.json
  def create
    @foto_galeri = FotoGaleri.new(params[:foto_galeri])

    respond_to do |format|
      if @foto_galeri.save
        format.html { redirect_to @foto_galeri, notice: 'Foto galeri was successfully created.' }
        format.json { render json: @foto_galeri, status: :created, location: @foto_galeri }
      else
        format.html { render action: "new" }
        format.json { render json: @foto_galeri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /foto_galeris/1
  # PUT /foto_galeris/1.json
  def update
    @foto_galeri = FotoGaleri.find(params[:id])

    respond_to do |format|
      if @foto_galeri.update_attributes(params[:foto_galeri])
        format.html { redirect_to @foto_galeri, notice: 'Foto galeri was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @foto_galeri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foto_galeris/1
  # DELETE /foto_galeris/1.json
  def destroy
    @foto_galeri = FotoGaleri.find(params[:id])
    @foto_galeri.destroy

    respond_to do |format|
      format.html { redirect_to foto_galeris_url }
      format.json { head :no_content }
    end
  end
end
