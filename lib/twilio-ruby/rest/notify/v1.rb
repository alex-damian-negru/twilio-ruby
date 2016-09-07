##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class Notify
      class V1 < Version
        ##
        # Initialize the V1 version of Notify
        def initialize(domain)
          super
          @version = 'v1'
          @credentials = nil
          @services = nil
        end
        
        def credentials(sid=:unset)
          if sid == :unset
            @credentials ||= CredentialList.new self
          else
            CredentialContext.new(self, sid)
          end
        end
        
        def services(sid=:unset)
          if sid == :unset
            @services ||= ServiceList.new self
          else
            ServiceContext.new(self, sid)
          end
        end
        
        ##
        # Provide a user friendly representation
        def to_s
          '<Twilio::REST::Notify::V1>'
        end
      end
    end
  end
end