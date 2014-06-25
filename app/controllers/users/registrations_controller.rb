class Users::RegistrationsController < Devise::RegistrationsController

  def new
      build_resource({})
      resource.invitation_token = params[:invitation_token]
      resource.email = resource.invitation.recipient_email if resource.invitation
      respond_with self.resource
  end

  def create
    super
  end

end