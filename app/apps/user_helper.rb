module UserHelper
  # 当前登录用户
  #  通过请求头里的token找,
  #  由于产生了SQL查询, 在一个API中请不要反复调用这个helper，应当存在局部变量中
  # ----------------------
  # @return [User] 登录用户
  # @return [nil]  用户未登录 或者 Token已经过期
  def current_user
    return @current_user if @current_user.present?
    @current_user = User.find_by(uuid:  token)
    
    @current_user
  end

  # 需要用户登录


  def require_current_user 
  
    @current_user ||= current_user 
    #raise Vf::TokenError if @current_user.nil? || @current_user.status < 0
   # UserLogin.record_user_login(@current_user) rescue nil

  end




  def token
    headers['Token'] || params["token"]
  end
end
