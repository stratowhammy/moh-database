class CongressPeopleController < ApplicationController
  before_action :set_congress_person, only: [:show, :edit, :update, :destroy]

  # GET /congress_people
  # GET /congress_people.json
  def index
    @congress_people = CongressPerson.all
  end

  # GET /congress_people/1
  # GET /congress_people/1.json
  def show
  end

  # GET /congress_people/new
  def new
    @congress_person = CongressPerson.new
  end

  # GET /congress_people/1/edit
  def edit
  end

  # POST /congress_people
  # POST /congress_people.json
  def create
    @congress_person = CongressPerson.new(congress_person_params)

    respond_to do |format|
      if @congress_person.save
        format.html { redirect_to @congress_person, notice: 'Congress person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @congress_person }
      else
        format.html { render action: 'new' }
        format.json { render json: @congress_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congress_people/1
  # PATCH/PUT /congress_people/1.json
  def update
    respond_to do |format|
      if @congress_person.update(congress_person_params)
        format.html { redirect_to @congress_person, notice: 'Congress person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @congress_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congress_people/1
  # DELETE /congress_people/1.json
  def destroy
    @congress_person.destroy
    respond_to do |format|
      format.html { redirect_to congress_people_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congress_person
      @congress_person = CongressPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def congress_person_params
      params.require(:congress_person).permit(:first_name, :last_name, :house, :notes, :district_phone, :capitol_phone, :district, :party)
    end
end
