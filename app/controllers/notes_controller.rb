class NotesController < ApplicationController
  def new
  end
  
  def show
    @note = Note.find(params[:id])
  end
  
  def create
    @note = Note.new
    @note.update_attributes(name: params[:name])
    @note.update_attributes(description: params[:description])
    #@note.update_attributes(source: params[:source])
    @note.update_attributes(user_id: current_user.id)
    @note.update_attributes(category_subject: params[:category_subject])
    @note.update_attributes(category_grade: params[:category_grade])
    @note.update_attributes(category_board: params[:category_board])
    render 'show'
  end
  
  def edit
  end
  
  def update
  end
  
  
  def index
     @notes = Note.all.paginate(page: params[:page], per_page: 10)
    #if !params[:basic_search].nil?
    #  @notes = Note.basic_search(params[:note])
    #elsif #if advanced search search combo of items
    #end
  end
end