##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class FlexApi < Domain
      class V1 < Version
        class InsightsUserRolesList < ListResource
          ##
          # Initialize the InsightsUserRolesList
          # @param [Version] version Version that contains the resource
          # @return [InsightsUserRolesList] InsightsUserRolesList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.FlexApi.V1.InsightsUserRolesList>'
          end
        end

        class InsightsUserRolesPage < Page
          ##
          # Initialize the InsightsUserRolesPage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [InsightsUserRolesPage] InsightsUserRolesPage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of InsightsUserRolesInstance
          # @param [Hash] payload Payload response from the API
          # @return [InsightsUserRolesInstance] InsightsUserRolesInstance
          def get_instance(payload)
            InsightsUserRolesInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.FlexApi.V1.InsightsUserRolesPage>'
          end
        end

        class InsightsUserRolesContext < InstanceContext
          ##
          # Initialize the InsightsUserRolesContext
          # @param [Version] version Version that contains the resource
          # @return [InsightsUserRolesContext] InsightsUserRolesContext
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
            @uri = "/Insights/UserRoles"
          end

          ##
          # Fetch the InsightsUserRolesInstance
          # @param [String] token The Token HTTP request header
          # @return [InsightsUserRolesInstance] Fetched InsightsUserRolesInstance
          def fetch(token: :unset)
            headers = Twilio::Values.of({'Token' => token, })

            payload = @version.fetch('GET', @uri, headers: headers)

            InsightsUserRolesInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.FlexApi.V1.InsightsUserRolesContext #{context}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.FlexApi.V1.InsightsUserRolesContext #{context}>"
          end
        end

        class InsightsUserRolesInstance < InstanceResource
          ##
          # Initialize the InsightsUserRolesInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @return [InsightsUserRolesInstance] InsightsUserRolesInstance
          def initialize(version, payload)
            super(version)

            # Marshaled Properties
            @properties = {'roles' => payload['roles'], 'url' => payload['url'], }

            # Context
            @instance_context = nil
            @params = {}
          end

          ##
          # Generate an instance context for the instance, the context is capable of
          # performing various actions.  All instance actions are proxied to the context
          # @return [InsightsUserRolesContext] InsightsUserRolesContext for this InsightsUserRolesInstance
          def context
            unless @instance_context
              @instance_context = InsightsUserRolesContext.new(@version, )
            end
            @instance_context
          end

          ##
          # @return [Array[String]] Flex Insights roles for the user
          def roles
            @properties['roles']
          end

          ##
          # @return [String] The url
          def url
            @properties['url']
          end

          ##
          # Fetch the InsightsUserRolesInstance
          # @param [String] token The Token HTTP request header
          # @return [InsightsUserRolesInstance] Fetched InsightsUserRolesInstance
          def fetch(token: :unset)
            context.fetch(token: token, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.FlexApi.V1.InsightsUserRolesInstance #{values}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.FlexApi.V1.InsightsUserRolesInstance #{values}>"
          end
        end
      end
    end
  end
end