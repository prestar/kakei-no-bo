class MonthlydataController < ApplicationController
  # GET /monthlydata
  # GET /monthlydata.json
  def index
    @monthlydata = Monthlydatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @monthlydata }
    end
  end

  # GET /monthlydata/1
  # GET /monthlydata/1.json
  def show
    @monthlydatum = Monthlydatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @monthlydatum }
    end
  end

  # GET /monthlydata/new
  # GET /monthlydata/new.json
  def new
    @monthlydatum = Monthlydatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @monthlydatum }
    end
  end

  # GET /monthlydata/1/edit
  def edit
    @monthlydatum = Monthlydatum.find(params[:id])
  end

  # POST /monthlydata
  # POST /monthlydata.json
  def create
    @monthlydatum = Monthlydatum.new(params[:monthlydatum])

    respond_to do |format|
      if @monthlydatum.save
        format.html { redirect_to @monthlydatum, notice: 'Monthlydatum was successfully created.' }
        format.json { render json: @monthlydatum, status: :created, location: @monthlydatum }
      else
        format.html { render action: "new" }
        format.json { render json: @monthlydatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /monthlydata/1
  # PUT /monthlydata/1.json
  def update
    @monthlydatum = Monthlydatum.find(params[:id])

    respond_to do |format|
      if @monthlydatum.update_attributes(params[:monthlydatum])
        format.html { redirect_to @monthlydatum, notice: 'Monthlydatum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @monthlydatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monthlydata/1
  # DELETE /monthlydata/1.json
  def destroy
    @monthlydatum = Monthlydatum.find(params[:id])
    @monthlydatum.destroy

    respond_to do |format|
      format.html { redirect_to monthlydata_url }
      format.json { head :no_content }
    end
  end
end
