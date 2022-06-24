class PagesController < ApplicationController
    def home
        @apps = []
        applications = Doorkeeper::Application.all

            applications.each do |app|
            @apps << {
                name: app['name'],
                client_id: app['uid'],
                client_secret: app['secret']
                }
            end
    end
end