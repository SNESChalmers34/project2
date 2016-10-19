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
    @languages = Language.all
  end


  def create
    @student = Student.create(student_params.merge(:fluencies => fluencies))

    @student.save

    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
    @languages = Language.all
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params.merge(:fluencies => fluencies))


    redirect_to student_path
  end

  def destroy

  end



  private
  def student_params
    params.require(:student).permit(:name, :age, :admin)
  end

  def fluencies
    params[:student][:fluencies].reject{|e| e == "0"}.join(", ")
  end

end
