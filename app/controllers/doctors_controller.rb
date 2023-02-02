class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[ show edit update destroy ]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def edit
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to doctor_url(@doctor), notice: "Doctor was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @doctor.update(doctor_params)
      redirect_to doctor_url(@doctor), notice: "Doctor was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @doctor.destroy

    redirect_to doctors_url, notice: "Doctor was successfully destroyed."
  end

  private
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:first_name, :last_name, :gender, :date_of_birth)
    end
end
