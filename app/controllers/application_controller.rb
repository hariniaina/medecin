class ApplicationController < ActionController::Base
private
 
 def formulair
 	if user_signed_in?
 	   if  Doctor.find_by(user_id: current_user.id) 
       redirect_to home_doc_path
       end
       if Patient.find_by(user_id: current_user.id) 
     
      redirect_to home_connecter_path
 	  end
    end
 end
 def check_authorization_patient
 p = Patient.find_by(user_id: current_user.id)
 	if !(p.id == params[:id].to_i)
 	
 	redirect_to root_path 
    
 	end
 	
 end
  def check_authorization_doctor
  	k = Doctor.find_by(user_id: current_user.id)
 	if !(k.id == params[:id].to_i)
 	
 	redirect_to root_path 
    
 	end
 	
 end
 def root 
 	if true 
 	redirect_to root_path
 	end
 end
 def mety
 	if Patient.find_by(user_id: current_user.id)
    else
     	redirect_to root_path
 	end
 	
 end
end
