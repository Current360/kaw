class BlogsController < ApplicationController
    def index
        @blogs = Blog.all
        @blog = Blog.new
    end

    def new
        @blogs = Blog.all
        @blog = Blog.new
    end

    def create
        @blog = Blog.new(blog_params)
        if @blog.save
            flash['Blog Saved']
            redirect_to @blog
        else
            redirect_to new_blog_path
        end
    end

    def show
        @blog = Blog.find(params[:id])
    end

    def edit
        @blogs = Blog.all
        @blog = Blog.find(params[:id])
    end

    def update
        @blogs = Blog.all
        @blog = Blog.find(params[:id])

        if @blog.update(blog_params)
            redirect_to :blogs
        else
            redirect_to :edit
        end
    end

    # Defining accessible parameters of Blog model
    private
        def blog_params
          params.require(:blog).permit(:title, :content, :category, :id, :author, :blog_picture, :slug)
        end
end
