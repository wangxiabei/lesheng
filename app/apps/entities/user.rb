module Entities
  class User < Entities::Base
    expose :name,documentation: { type: "string", desc: "name" },as: :user_name
    expose :role_name,documentation: { type: "string", desc: "角色" },format_with: :null do |g,options|
        u_id = options[:u_id]
        u_id.blank? ? false : ::Role.exists?(user_id: u_id)
    end
  end
end
