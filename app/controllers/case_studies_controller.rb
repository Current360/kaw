class CaseStudiesController < ApplicationController
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
        def case_study_params
            params.require(:case_study).permit(:title, :challenge, :insight, :solution, :result
                                               :quote, :client, :slider1, :slider2, :slider3,
                                               :slider4, :slider5, :inset1, :inset2, :inset3)
        end
end
