class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def show
    find_class
  end

  def new
  end

  def create
    @school_class = SchoolClass.new()
    @school_class.title = params[:school_class_title]
    @school_class.room_number = params[:school_class_room_number]
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
    find_class
  end

  def update
    @school_class.update(
      title: params[:school_class][:title],
      room_number: params[:school_class][:room_number])
      redirect_to school_class_path(@school_class)
  end

  def delete
  end

  private

    def find_class
      @school_class = SchoolClass.find(params[:id])
    end
end
