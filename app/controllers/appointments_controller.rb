class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show edit update destroy ]

  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
    @doctor = Doctor.find(params[:doctor_id])
    @appointment = @doctor.appointments.new
  end

  def edit
  end

  def create
    @doctor = Doctor.find(params[:doctor_id])
    @appointment =  @doctor.appointments.new(appointment_params)
    @appointment.user = current_user

    if @appointment.save
      redirect_to current_user, notice: "Appointment was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to appointment_url(@appointment), notice: "Appointment was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_url, notice: "Appointment was successfully destroyed."
  end

  private
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:appointment_date, :status, :description, :doctor_id, :user_id)
    end
end
