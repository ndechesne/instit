class MatieresController < ApplicationController
  # GET /matieres
  # GET /matieres.json
  def index
    @matieres = Matiere.where(:user_id => current_user).all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @matieres }
    end
  end

  # GET /matieres/1
  # GET /matieres/1.json
  def show
    @matiere = Matiere.where(:user_id => current_user).find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @matiere }
    end
  end

  # GET /matieres/new
  # GET /matieres/new.json
  def new
    @matiere = current_user.matieres.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @matiere }
    end
  end

  # GET /matieres/1/edit
  def edit
    @matiere = Matiere.where(:user_id => current_user).find(params[:id])
  end

  # POST /matieres
  # POST /matieres.json
  def create
    @matiere = current_user.matieres.new(params[:matiere])

    respond_to do |format|
      if @matiere.save
        format.html { redirect_to @matiere, notice: 'Matiere was successfully created.' }
        format.json { render json: @matiere, status: :created, location: @matiere }
      else
        format.html { render action: "new" }
        format.json { render json: @matiere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /matieres/1
  # PUT /matieres/1.json
  def update
    @matiere = Matiere.where(:user_id => current_user).find(params[:id])

    respond_to do |format|
      if @matiere.update_attributes(params[:matiere])
        format.html { redirect_to @matiere, notice: 'Matiere was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @matiere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matieres/1
  # DELETE /matieres/1.json
  def destroy
    @matiere = Matiere.where(:user_id => current_user).find(params[:id])
    @matiere.destroy

    respond_to do |format|
      format.html { redirect_to matieres_url }
      format.json { head :no_content }
    end
  end
end
