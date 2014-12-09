class BiosController < ApplicationController
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

    # Defining accessible parameters of Bio model
    private
        def bio_params
            params.require(:bio).permit(:first_name, :last_name, :real_title, :funny_title,
                                        :question1, :question2, :question3, :question4, :question5,
                                        :answer1, :answer2, :answer3, :answer4, :answer5, :bio_pic,
                                        :overview)
        end
end
