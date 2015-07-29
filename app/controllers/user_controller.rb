class UserController < ApplicationController
  def new
  end
  
  def create
    @idea = Idea.new
    @idea.title = params['title']
    @idea.body = params['body']
    if @idea.save
      redirect_to "/idea/#{@idea.id}"
    else
      render 'new'
    end
  end
  
  def show
    @idea = Idea.find_by_id(params['id'])
  end

  def edit
    @idea = Idea.find_by(id: params['id'])
  end
  
  def update
    @idea = Idea.find_by(id: params['id'])
    @idea.title = params['title']
    @idea.body = params['body']
    if @film.save redirect_to "/mov/#{ @idea.id }"
    else
      render 'edit'
    end
  end
  def destroy
    @idea = Idea.find_by(id: params['id'])
    @idea.destroy
    redirect_to "/idea"
  end
  
  def index 
    @ideas = Idea.all
  end
end