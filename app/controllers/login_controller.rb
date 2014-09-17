class LoginController < ApplicationController
 def index
 end
 def login
   @account=User.find_by(account:params[:account])
   @password=User.find_by(password:params[:password])
   if (@account&&@password)
     session[:current]=@account.session_stronge
	  redirect_to books_path
	else
	  redirect_to index_path , :notice=> 'sorry'
	end
 end
 def exit
   session[:current]=nil
   redirect_to index_path
 end
end
