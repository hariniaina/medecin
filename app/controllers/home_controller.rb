class HomeController < ApplicationController
  
  def page
   unless user_signed_in?
   	redirect_to new_user_session_path
   end
   formulair
  end

  def connecter
    @doctor = Doctor.all
  	@users = User.all
  end

  def doc
    @doctor = Doctor.all
  	@patient = Patient.all
    @users = User.all
    @posts = Post.all
  end

  def showdoctor
    @user = User.find(params[:id])
  end
  def showpatient
     @user = User.find(params[:id])
  end
  def demande
    @appoitment = Appoitment.all
    @doctor_id = params[:id]
  end
    def accept
    @appoitment = Appoitment.all
    @doctor_id = params[:id]
  end
  
  def cardiologue
    @doctor = Doctor.all
    @cardiologue = "cardiologue"
    @users = User.all
  end
  
  def dentiste
    @doctor = Doctor.all
    @dentiste =  "dentiste"
    @users = User.all
  end
  
  def dermatologue
    @doctor = Doctor.all
    @dermatologue = "dermatologue"
    @users = User.all
  end
  
  def generaliste
   @doctor = Doctor.all
  @generaliste = "generaliste"
  @users = User.all
  end
  
  def gynecologue
    @doctor = Doctor.all
    @gynecologue = "gynecologue"
  @users = User.all
  end
  
  def neurologue
    @doctor = Doctor.all
    @neurologue = "neurologue"
  @users = User.all
  end
  
  def ophtamologue
    @doctor = Doctor.all
    @ophtamologue = "ophtamologue"
  @users = User.all
  end
  
  def orl
    @doctor = Doctor.all
    @orl = "orl"
  @users = User.all
  end
  
  def pediatre
    @doctor = Doctor.all
    @pediatre = "pediatre"
  @users = User.all
  end
  
  def sagefemme
    @doctor = Doctor.all
    @sagefemme = "sagefemme"
  @users = User.all
  end

  def stomatologue
    @doctor = Doctor.all
    @stomatologue = "stomatologue"
  @users = User.all
  end
  def kinesitherapeute
        @doctor = Doctor.all
    @kinesitherapeute = "kinesitherapeute"
  @users = User.all
  end
end
