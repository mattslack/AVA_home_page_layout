# Uncomment this if you reference any of your controllers in activate
# require_dependency "application_controller"
require "radiant-home_page_layout-extension"

class HomePageLayoutExtension < Radiant::Extension
  version     RadiantHomePageLayoutExtension::VERSION
  description RadiantHomePageLayoutExtension::DESCRIPTION
  url         RadiantHomePageLayoutExtension::URL

  # See your config/routes.rb file in this extension to define custom routes

  extension_config do |config|
    # config is the Radiant.configuration object
  end

  def activate
    # tab 'Content' do
    #   add_item "Home Page Layout", "/admin/home_page_layout", :after => "Pages"
    # end
    admin.page.edit.add(:form, "home_page", :after => 'edit_extended_metadata')
  end
end
