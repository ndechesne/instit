class ElevesController < ApplicationController
  # GET /eleves
  # GET /eleves.json
  def index
    @eleves = Eleve.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eleves }
    end
  end

  # GET /eleves/1
  # GET /eleves/1.json
  def show
    @elefe = Eleve.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @elefe }
    end
  end

  # GET /eleves/new
  # GET /eleves/new.json
  def new
    @elefe = Eleve.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @elefe }
    end
  end

  # GET /eleves/1/edit
  def edit
    @elefe = Eleve.find(params[:id])
  end

  # POST /eleves
  # POST /eleves.json
  def create
    @elefe = Eleve.new(params[:elefe])

    respond_to do |format|
      if @elefe.save
        format.html { redirect_to @elefe, notice: 'Eleve was successfully created.' }
        format.json { render json: @elefe, status: :created, location: @elefe }
      else
        format.html { render action: "new" }
        format.json { render json: @elefe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eleves/1
  # PUT /eleves/1.json
  def update
    @elefe = Eleve.find(params[:id])

    respond_to do |format|
      if @elefe.update_attributes(params[:elefe])
        format.html { redirect_to @elefe, notice: 'Eleve was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @elefe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eleves/1
  # DELETE /eleves/1.json
  def destroy
    @elefe = Eleve.find(params[:id])
    @elefe.destroy

    respond_to do |format|
      format.html { redirect_to eleves_url }
      format.json { head :no_content }
    end
  end
end
