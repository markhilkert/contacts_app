class Api::ContactsController < ApplicationController
  def one_contact_action
    @contact = Contact.last
    render 'one_contact_view.json.jbuilder'
  end
end
