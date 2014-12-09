class BiosController < ApplicationController
    def index
        @bios = Bio.all
        @bio = Bio.new

        @featured = Bio.find(1)
    end

    def new
        @bio = Bio.new
    end

    def create
        @bio = Bio.new(bio_params)
        if @bio.save
            redirect_to bios_path
        else
            render 'new'
        end
    end

    def show
        @bio = Bio.find(params[:id])
    end

    def edit
        @bio = Bio.find(params[:id])
    end

    def update
        @bios = Bio.all
        @bio = Bio.find(params[:id])
        if @bio.update(bio_params)
            redirect_to @bios
        else
            redirect_to :edit
        end
    end

    def update_featured
        @selected = Bio.where(:id => params[:id])
        respond_to do |format|
            format.js
        end
    end

    # Defining accessible parameters of Bio model
    private
        def bio_params
            params.require(:bio).permit(:first_name, :last_name, :real_title, :funny_title,
                                        :question1, :question2, :question3, :question4, :question5,
                                        :answer1, :answer2, :answer3, :answer4, :answer5, :bio_pic,
                                        :overview)
        end
end
