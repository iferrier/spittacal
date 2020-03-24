class Users::InvitationsController < Devise::InvitationsController
  def new
     self.resource = resource_class.new
     render :new
   end

   def create
     self.resource = invite_resource
     resource_invited = resource.errors.empty?

     yield resource if block_given?

     if resource_invited
       if is_flashing_format? && self.resource.invitation_sent_at
         set_flash_message :notice, :send_instructions, email: self.resource.email
       end
       if self.method(:after_invite_path_for).arity == 1
         respond_with resource, location: after_invite_path_for(current_inviter)
       else
         respond_with resource, location: after_invite_path_for(current_inviter, resource)
       end
     else
       respond_with_navigational(resource) { render :new }
     end
   end


   private

   def invite_resource(&block)
     resource_class.invite!(invite_params, current_inviter, &block)
   end

   def invite_params
     devise_parameter_sanitizer.sanitize(:invite)
   end
end
