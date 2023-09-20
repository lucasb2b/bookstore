class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update, :destroy]

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to authors_path, notice: 'Autor criado com sucesso.'
    else
      render :new
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update(author_params)

    redirect_to root_path
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    params[:id] = nil
    flash[:notice] = "Author has been deleted"
    redirect_to :action => :index
  end

  private

  def set_author
    author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:name)
  end
end
