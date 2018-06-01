class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /workouts
  # GET /workouts.json
  def index
    @workouts = Workout.all
    # @activities = Activity.all.order(:id)
    # @user = current_user
  end

  
  def show
  end

  def new
    @workout = Workout.new
    # @activity = Activity.find(params[:id])
  end

  # GET /workouts/1/edit
  def edit

  end

  # POST /workouts
  # POST /workouts.json
  def create
    # @workout = current_user.workouts.build({activity_id: params[:id]})  #error "Activity must exist"
    @workout = Workout.new(workout_params)
    @workout.user = current_user
    @activity = Activity.new(workout_params[:activity_id])   #error "Couldn't find Activity with 'id'=
      respond_to do |format|
      if @workout.save
        format.html { redirect_to @workout, notice: 'Your workout was logged!' }
        format.json { render :show, status: :created, location: @workout }
      else
        format.html { render :new }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /workouts/1
  # PATCH/PUT /workouts/1.json
  def update
    respond_to do |format|
      if @workout.update(workout_params)
        format.html { redirect_to @workout, notice: 'workout was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout }
      else
        format.html { render :edit }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.json
  def destroy
    @workout.destroy
    respond_to do |format|
      format.html { redirect_to workouts_url, notice: 'workout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = workout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_params
      params.require(:workout).permit(:user_id, :duration, :notes, :activity_id)
    end
end
