class EditorsController < ApplicationController
  def index 
  end

  def new 
  	@editor = Editor.new
  end

  def create
  	if Editor.maximum(:id).nil?
  		next_id = 0
  	else
  		next_id = Editor.maximum(:id)+1;
<<<<<<< HEAD
=======
 	end

 	permitted = params.require(:editor).permit(:user1)
 	permitted[:path] = next_id.to_s
 	@editor = Editor.new(permitted)
>>>>>>> 8a884d327f5c45e0e0fb358f83c6dc1dbbfaf426

   	if @editor.save
   		redirect_to edit_editor_path(@editor.id)
   	else 
   		render 'new'
   	end
  end 

  def edit
  	@editor_id = params[:id]
    gon.editor_id = @editor_id
  	@messages = Message.all
  	@default_content = "hello world"
  end

end 
