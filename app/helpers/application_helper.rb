module ApplicationHelper
  def imahido  #現在使用者是誰
   @ima=User.find_by(session_stronge:session[:current])
  end
 
  def user_login? #有沒有登入
    if session[:current]==nil then
	 redirect_to index_path
    end
  end
  def but_ad
    User.find_by(session_stronge:session[:current]).size
  end
  def admin_user #超及使用者
    if @ima.size=='t' 
	 
	else
	  redirect_to index_path
  end
 end
end