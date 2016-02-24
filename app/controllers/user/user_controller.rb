class User::UserController < ApplicationController
  layout "application_admin"
  before_action :authenticate_user!
end
