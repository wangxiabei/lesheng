
class RootApp < Grape::API
  require 'grape'

  include AppDefaults
  helpers ::UserHelper
  helpers ::APIHelper

  get '/' do
    {lesheng: 'app'}
  end

  #mount TouristApp

  mount Rest::User

  #formatter :json, DefaultFormatter

  add_swagger_documentation(
    mount_path: '/swagger',

    format: :json,
    hide_format: true,
    #markdown: GrapeSwagger::Markdown::KramdownAdapter,
    api_version: '1.0',
    hide_documentation_path: true,

    info: {
      title: '自动文档系统',
      description: <<-DESC
        **身份验证**：每次接口调用时，均要以 http basic authentication 提交以冒号隔开的密钥对：Authorization: Basic Base64(**api_user:api_key**)
      DESC
    }
  )

  route :any, '*path' do
    #error!({error: '错误的接口地址', field: 404, with: Entities::Error}, 404)
  end
end
