class Rest::User < Grape::API
  formatter :json, DefaultFormatter
  namespace :users do
    desc '搜索用户'
     params do
        requires :authentication_token ,type: String,desc: "用户的token"
     end
     get "/info" do
        users = ::User.where("authentication_token ?",params[:authentication_token])
        present users,with: Entities::User if users
    end
    desc "所有用户"
    params do
    end
    get "all" do
      users = ::User.all
      present users,with: Entities::User
    end
  end
end
