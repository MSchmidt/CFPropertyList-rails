module CFPropertyList
  module Rails
    class Railtie < ::Rails::Railtie
      initializer 'cfpropertylist-rails.initialize' do
        Mime::Type.register CFPropertyList::Rails::MIME_TYPE, :plist

        ActionController::Renderers.add :plist do |data, options|
          data = data.as_json(options) unless options[:skip_serialization] == true

          self.content_type ||= Mime::PLIST
          self.response_body = data.to_plist(:convert_unknown_to_string => true)
        end
      end
    end
  end
end
