#
class UsersController < ProtectedController
  skip_before_action :authenticate, only: [:signup, :signin]

  # POST '/sign-up'
  def signup
    user = User.create(user_creds)
    if user.valid?
      if user.profileable_type == 'Teacher'
        user.profileable = Teacher.new({name: user.name})
        user.save!
        render json: user, status: :created
      elsif user.profileable_type == "Student"
        user.profileable = Student.new({name: user.name})
        user.save!
        render json: user, status: :created
      end
    else
      head :bad_request
    end
  end

  # POST '/sign-in'
  def signin
    creds = user_creds
    if (user = User.authenticate creds[:email],
                                 creds[:password])
      render json: user, serializer: UserLoginSerializer, root: 'user'
    else
      head :unauthorized
    end
  end

  # DELETE '/sign-out/1'
  def signout
    if current_user == User.find(params[:id])
      current_user.logout
      head :no_content
    else
      head :unauthorized
    end
  end

  # PATCH '/change-password/:id'
  def changepw
    if !current_user.authenticate(pw_creds[:old]) ||
       (current_user.password = pw_creds[:new]).blank? ||
       !current_user.save
      head :bad_request
    else
      head :no_content
    end
  end

  def index
    render json: User.all
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    head :bad_request
  end

  private

  def user_creds
    params.require(:credentials)
          .permit(:email, :password, :password_confirmation, :profileable_type, :name)
  end

  def pw_creds
    params.require(:passwords)
          .permit(:old, :new)
  end

  private :user_creds, :pw_creds
end
