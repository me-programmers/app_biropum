require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FotoGalerisController do

  # This should return the minimal set of attributes required to create a valid
  # FotoGaleri. As you add validations to FotoGaleri, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "judul" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FotoGalerisController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all foto_galeris as @foto_galeris" do
      foto_galeri = FotoGaleri.create! valid_attributes
      get :index, {}, valid_session
      assigns(:foto_galeris).should eq([foto_galeri])
    end
  end

  describe "GET show" do
    it "assigns the requested foto_galeri as @foto_galeri" do
      foto_galeri = FotoGaleri.create! valid_attributes
      get :show, {:id => foto_galeri.to_param}, valid_session
      assigns(:foto_galeri).should eq(foto_galeri)
    end
  end

  describe "GET new" do
    it "assigns a new foto_galeri as @foto_galeri" do
      get :new, {}, valid_session
      assigns(:foto_galeri).should be_a_new(FotoGaleri)
    end
  end

  describe "GET edit" do
    it "assigns the requested foto_galeri as @foto_galeri" do
      foto_galeri = FotoGaleri.create! valid_attributes
      get :edit, {:id => foto_galeri.to_param}, valid_session
      assigns(:foto_galeri).should eq(foto_galeri)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FotoGaleri" do
        expect {
          post :create, {:foto_galeri => valid_attributes}, valid_session
        }.to change(FotoGaleri, :count).by(1)
      end

      it "assigns a newly created foto_galeri as @foto_galeri" do
        post :create, {:foto_galeri => valid_attributes}, valid_session
        assigns(:foto_galeri).should be_a(FotoGaleri)
        assigns(:foto_galeri).should be_persisted
      end

      it "redirects to the created foto_galeri" do
        post :create, {:foto_galeri => valid_attributes}, valid_session
        response.should redirect_to(FotoGaleri.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved foto_galeri as @foto_galeri" do
        # Trigger the behavior that occurs when invalid params are submitted
        FotoGaleri.any_instance.stub(:save).and_return(false)
        post :create, {:foto_galeri => { "judul" => "invalid value" }}, valid_session
        assigns(:foto_galeri).should be_a_new(FotoGaleri)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FotoGaleri.any_instance.stub(:save).and_return(false)
        post :create, {:foto_galeri => { "judul" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested foto_galeri" do
        foto_galeri = FotoGaleri.create! valid_attributes
        # Assuming there are no other foto_galeris in the database, this
        # specifies that the FotoGaleri created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FotoGaleri.any_instance.should_receive(:update_attributes).with({ "judul" => "MyString" })
        put :update, {:id => foto_galeri.to_param, :foto_galeri => { "judul" => "MyString" }}, valid_session
      end

      it "assigns the requested foto_galeri as @foto_galeri" do
        foto_galeri = FotoGaleri.create! valid_attributes
        put :update, {:id => foto_galeri.to_param, :foto_galeri => valid_attributes}, valid_session
        assigns(:foto_galeri).should eq(foto_galeri)
      end

      it "redirects to the foto_galeri" do
        foto_galeri = FotoGaleri.create! valid_attributes
        put :update, {:id => foto_galeri.to_param, :foto_galeri => valid_attributes}, valid_session
        response.should redirect_to(foto_galeri)
      end
    end

    describe "with invalid params" do
      it "assigns the foto_galeri as @foto_galeri" do
        foto_galeri = FotoGaleri.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FotoGaleri.any_instance.stub(:save).and_return(false)
        put :update, {:id => foto_galeri.to_param, :foto_galeri => { "judul" => "invalid value" }}, valid_session
        assigns(:foto_galeri).should eq(foto_galeri)
      end

      it "re-renders the 'edit' template" do
        foto_galeri = FotoGaleri.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FotoGaleri.any_instance.stub(:save).and_return(false)
        put :update, {:id => foto_galeri.to_param, :foto_galeri => { "judul" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested foto_galeri" do
      foto_galeri = FotoGaleri.create! valid_attributes
      expect {
        delete :destroy, {:id => foto_galeri.to_param}, valid_session
      }.to change(FotoGaleri, :count).by(-1)
    end

    it "redirects to the foto_galeris list" do
      foto_galeri = FotoGaleri.create! valid_attributes
      delete :destroy, {:id => foto_galeri.to_param}, valid_session
      response.should redirect_to(foto_galeris_url)
    end
  end

end