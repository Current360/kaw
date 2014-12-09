class BlogsController < ApplicationController
    def index
    end

    def new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    # Defining accessible parameters of Blog model
    private
        def blog_params
          params.require(:blog).permit(:title, :content, :category, :id, :author, :blog_picture, :slug)
        end
end
