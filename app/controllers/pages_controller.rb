class PagesController < ApplicationController
    def index
    end

    def work
    end

    def culture
        instagram = Instagram.user_recent_media("4641505", {:count => 8}) #+ Instagram.user("4641505").tags("c360bowl")


        dribbble = Dribbble::Player.find('Current360').shots +
                   Dribbble::Player.find('DonovanSears').shots +
                   Dribbble::Player.find('JimDeweese').shots +
                   Dribbble::Player.find('DBonifer').shots

        @pictures = InstagramPictureMaker.new(instagram).pictures #+ DribbblePictureMaker.new(dribbble).pictures
        # logger.debug(@pictures)
    end

    def life
    end

    def contact
    end

    def strategy
    end
end
