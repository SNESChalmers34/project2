class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @proficiencies = @student.proficiencies
  end

  def new
    @student = Student.new
    @student.languages.build
    @languages = Language.all
  end

  def create
    @student = Student.create(student_params)

    @student.save

    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
    @languages = Language.all
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)

    if params[:English]
      @english = Language.find(params[:English])
      @proficiency = Proficiency.create(student: @student, language: @english)
    else
      @proficiency = Proficiency.destroy
    end

    redirect_to student_path
  end

  def destroy

  end


  private
  def student_params
    params.require(:student).permit(:name, :age, :admin)
  end


end
