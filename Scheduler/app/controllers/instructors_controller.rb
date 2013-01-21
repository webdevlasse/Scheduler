class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def new
    @instructor = Instructor.new
      respond_to do |format|
        format.html
        format.js {render json: instructor}
      end
  end

  def create
     @instructor = Instructor.new(params[:instructor])

     respond_to do |format|
       if @instructor.save
         format.html { redirect_to @instructor, notice: 'Instructor was successfully created.' }
         format.json { render json: @instructor, status: :created, location: @instructor }
       else
         format.html { render action: "new" }
         format.json { render json: @instructor.errors, status: :unprocessable_entity }
       end
     end
   end

end
