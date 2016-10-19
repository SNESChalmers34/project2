class ProficienciesController < ApplicationController

  def index

  end

  def new
    @student = Student.find(params[:student_id])
    @proficiency = Proficiency.new
  end

  def create
    @student = Student.find(params[:student_id])


    @proficiency = @student.proficiencies.create(proficiency_params)
    @proficiency.save

    redirect_to student_path(@student)

  end

  def edit
    @student = Student.find(params[:student_id])
    @proficiency = Proficiency.find(params[:id])

  end

  def update
    @student = Student.find(params[:student_id])

    @proficiency = Proficiency.find(params[:id])
    @proficiency.update(proficiency_params)

    redirect_to student_path(@student)

  end

  def destroy
    @student = Student.find(params[:student_id])
    @proficiency = @student.proficiencies.find(params[:id])
    @proficiency.update(want_to_learn: nil)

    redirect_to student_path(@student)
  end

  private
  def proficiency_params
    params.require(:proficiency).permit(:fluent_in, :language_know, :want_to_learn, :language_learn, :reason)
  end

end
