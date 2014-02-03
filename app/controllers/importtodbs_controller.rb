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
      format.html { redirect_to importtodbs_url, notice: 'Data Jumlah Penduduk berhasil di import.' }
    end   
  end

  def import_agama
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
        DbAgama.new(
          :kdkab => "#{row[0]}",
          :nama_kab => "#{row[1]}",
          :kd_kec => "#{row[2]}",
          :nama_kec => "#{row[3]}",
          :kd_kel => "#{row[4]}",
          :desa_kel => "#{row[5]}",
          :laki => "#{row[6]}",
          :perempuan => "#{row[7]}",
          :islam => "#{row[8]}",
          :kristen => "#{row[9]}",
          :katolik => "#{row[10]}",
          :hindu => "#{row[11]}",
          :budha => "#{row[12]}",
          :konghucu => "#{row[13]}",
          :kepercayaan => "#{row[14]}",
          :jumlah_penduduk => "#{row[15]}"
          )
      ]
      DbAgama.import(sql_vals)
           
    end
    @input_log.status = "Done"
    @input_log.save
    respond_to do |format|
      format.html { redirect_to importtodbs_url, notice: 'Data Agama berhasil di import.' }
    end   
  end

  def import_pekerjaan
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
        DbPekerjaan.new(
          :kd_kab => "#{row[0]}",
          :nama_kab => "#{row[1]}",
          :kd_kec => "#{row[2]}",
          :nama_kec => "#{row[3]}",
          :kd_kel => "#{row[4]}",
          :desa_kel => "#{row[5]}",
          :laki => "#{row[6]}",
          :perempuan => "#{row[7]}",
          :belum_tidak_bekerja => "#{row[8]}",
          :mengurus_rumah_tangga => "#{row[9]}",
          :pelajar_mahasiswa => "#{row[10]}",
          :pensiunan => "#{row[11]}",
          :pegawai_negeri_sipil => "#{row[12]}",
          :tentara_nasional_indonesia => "#{row[13]}",
          :kepolisian_ri => "#{row[14]}",
          :perdagangan => "#{row[15]}",
          :petani_pekebun => "#{row[16]}",
          :peternak => "#{row[17]}",
          :nelayan_perikanan => "#{row[18]}",
          :industri => "#{row[19]}",
          :konstruksi => "#{row[20]}",
          :transportasi => "#{row[21]}",
          :karyawan_swasta => "#{row[22]}",
          :karyawan_bumn => "#{row[23]}",
          :karyawan_bumd => "#{row[24]}",
          :karyawan_honorer => "#{row[25]}",
          :buruh_harian_lepas => "#{row[26]}",
          :buruh_tani_perkebunan => "#{row[27]}",
          :buruh_nelayan_perikanan => "#{row[28]}",
          :buruh_peternakan => "#{row[29]}",
          :pembantu_rumah_tangga => "#{row[30]}",
          :tukang_cukur => "#{row[31]}",
          :tukang_lisrik => "#{row[32]}",
          :tukang_batu => "#{row[33]}",
          :tukang_kayu => "#{row[34]}",
          :tukang_sol_sepatu => "#{row[35]}",
          :tukang_las_pandai_besi => "#{row[36]}",
          :tukang_jahit => "#{row[37]}",
          :tukang_gigi => "#{row[38]}",
          :penata_rias => "#{row[39]}",
          :penata_busana => "#{row[40]}",
          :penata_rambut => "#{row[41]}",
          :mekanik => "#{row[42]}",
          :seniman => "#{row[43]}",
          :tabib => "#{row[44]}",
          :paraji => "#{row[45]}",
          :perancang_busana => "#{row[46]}",
          :penterjemah => "#{row[47]}",
          :imam_mesjid => "#{row[48]}",
          :pendeta => "#{row[49]}",
          :pastor => "#{row[50]}",
          :wartawan => "#{row[51]}",
          :ustadz_mubaligh => "#{row[52]}",
          :juru_masak => "#{row[53]}",
          :promotor_acara => "#{row[54]}",
          :anggota_dpr_ri => "#{row[55]}",
          :anggota_dpd => "#{row[56]}",
          :anggota_bpk => "#{row[57]}",
          :presiden => "#{row[58]}",
          :wakil_presiden => "#{row[59]}",
          :anggota_mahkamah_konstitusi => "#{row[60]}",
          :anggota_kabinet_kementrian => "#{row[61]}",
          :duta_besar => "#{row[62]}",
          :gubernur => "#{row[63]}",
          :wakil_gubernur => "#{row[64]}",
          :bupati => "#{row[65]}",
          :wakil_bupati => "#{row[66]}",
          :walikota => "#{row[67]}",
          :wakil_walikota => "#{row[68]}",
          :anggota_dprd_provinsi => "#{row[69]}",
          :anggota_dprd_kabupaten_kota => "#{row[70]}",
          :dosen => "#{row[71]}",
          :guru => "#{row[72]}",
          :pilot => "#{row[73]}",
          :pengacara => "#{row[74]}",
          :notaris => "#{row[75]}",
          :arsitek => "#{row[76]}",
          :akuntan => "#{row[77]}",
          :konsultan => "#{row[78]}",
          :dokter => "#{row[79]}",
          :bidan => "#{row[80]}",
          :perawat => "#{row[81]}",
          :apoteker => "#{row[82]}",
          :psikiater_psikolog => "#{row[83]}",
          :penyiar_televisi => "#{row[84]}",
          :penyiar_radio => "#{row[85]}",
          :pelaut => "#{row[86]}",
          :peneliti => "#{row[87]}",
          :sopir => "#{row[88]}",
          :pialang => "#{row[89]}",
          :paranormal => "#{row[90]}",
          :pedagang => "#{row[91]}",
          :perangkat_desa => "#{row[92]}",
          :kepala_desa => "#{row[93]}",
          :biarawati => "#{row[94]}",
          :wiraswasta => "#{row[95]}",
          :lainnya => "#{row[96]}",
          :jumlah_penduduk => "#{row[97]}"
          )
      ]
      DbPekerjaan.import(sql_vals)         

    end
    @input_log.status = "Done"
    @input_log.save
    respond_to do |format|
      format.html { redirect_to importtodbs_url, notice: 'Data Pekerjaan berhasil di import.' }
    end   
  end

  def import_pendidikan
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
        DbPendidikan.new(
          :kd_kab => "#{row[0]}",
          :nama_kab => "#{row[1]}",
          :kd_kec => "#{row[2]}",
          :nama_kec => "#{row[3]}",
          :kd_kel => "#{row[4]}",
          :desa_kel => "#{row[5]}",
          :laki => "#{row[6]}",
          :perempuan => "#{row[7]}",
          :belum_sekolah => "#{row[8]}",
          :tidak_tamat_sd => "#{row[9]}",
          :tamat_sd => "#{row[10]}",
          :sltp => "#{row[11]}",
          :slta => "#{row[12]}",
          :dip_ii => "#{row[13]}",
          :dip_iii => "#{row[14]}",
          :strata_i => "#{row[15]}",
          :strata_ii => "#{row[16]}",
          :strata_iii => "#{row[17]}",
          :jumlah_penduduk => "#{row[18]}"
          )
      ]
      DbPendidikan.import(sql_vals)
           
    end
    @input_log.status = "Done"
    @input_log.save
    respond_to do |format|
      format.html { redirect_to importtodbs_url, notice: 'Data Pendidikan berhasil di import.' }
    end   
  end

  def import_statuskawin
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
        DbStatuskawin.new(
          :kd_kab => "#{row[0]}",
          :nama_kab => "#{row[1]}",
          :kd_kec => "#{row[2]}",
          :nama_kec => "#{row[3]}",
          :kd_kel => "#{row[4]}",
          :desa_kel => "#{row[5]}",
          :laki => "#{row[6]}",
          :perempuan => "#{row[7]}",
          :belum_kawin => "#{row[8]}",
          :kawin => "#{row[9]}",
          :cerai_hidup => "#{row[10]}",
          :cerai_mati => "#{row[11]}",
          :jumlah_penduduk => "#{row[12]}"
          )
      ]
      DbStatuskawin.import(sql_vals)
           
    end
    @input_log.status = "Done"
    @input_log.save
    respond_to do |format|
      format.html { redirect_to importtodbs_url, notice: 'Data Pendidikan berhasil di import.' }
    end   
  end

  def import_umur
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
        DbUmur.new(
          :kd_kab => "#{row[0]}",
          :nama_kab => "#{row[1]}",
          :kd_kec => "#{row[2]}",
          :nama_kec => "#{row[3]}",
          :kd_kel => "#{row[4]}",
          :desa_kel => "#{row[5]}",
          :i04thn => "#{row[6]}",
          :i59thn => "#{row[7]}",
          :i1014thn => "#{row[8]}",
          :i1519thn => "#{row[9]}",
          :i2024thn => "#{row[10]}",
          :i2529thn => "#{row[11]}",
          :i3034thn => "#{row[12]}",
          :i3539thn => "#{row[13]}",
          :i4044thn => "#{row[14]}",
          :i4549thn => "#{row[15]}",
          :i5054thn => "#{row[16]}",
          :i5559thn => "#{row[17]}",
          :i6064thn => "#{row[18]}",
          :i6569thn => "#{row[19]}",
          :i7074thn => "#{row[20]}",
          :i74thn => "#{row[21]}"
          )
      ]
      DbUmur.import(sql_vals)
           
    end
    @input_log.status = "Done"
    @input_log.save
    respond_to do |format|
      format.html { redirect_to importtodbs_url, notice: 'Data Pendidikan berhasil di import.' }
    end   
  end

  def import_usiasekolah
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
        DbUsiasekolah.new(
          :kd_kab => "#{row[0]}",
          :nama_kab => "#{row[1]}",
          :kd_kec => "#{row[2]}",
          :nama_kec => "#{row[3]}",
          :kd_kel => "#{row[4]}",
          :desa_kel => "#{row[5]}",
          :pra_sekolah => "#{row[6]}",
          :sd_sederajat => "#{row[7]}",
          :sltp_sederajat => "#{row[8]}",
          :slta_sederajat => "#{row[9]}",
          :perguruan_tinggi => "#{row[10]}"
          )
      ]
      DbUsiasekolah.import(sql_vals)
           
    end
    @input_log.status = "Done"
    @input_log.save
    respond_to do |format|
      format.html { redirect_to importtodbs_url, notice: 'Data Pendidikan berhasil di import.' }
    end   
  end

end
