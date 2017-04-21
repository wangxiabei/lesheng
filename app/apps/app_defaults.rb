module AppDefaults

  extend ActiveSupport::Concern

  require 'grape_logging'

  included do

    default_format :json
    #formatters :json, ::DefaultFormatter
    #default_error_status 401

     # 没有找到数据
    rescue_from  ActiveRecord::RecordNotFound  do |e|
       Rack::Response.new([{ status: 0,
        error_msg: '数据不存在' }.to_json], 200, { 'Content-Type' => 'application/json; charset=utf-8' }).finish
    end

    rescue_from Lezhi::TokenError do |e|
       Rack::Response.new([{ status: 0,
          error_msg: '用户尚未登录' }.to_json], 200, { 'Content-Type' => 'application/json; charset=utf-8' }).finish
    end

    # 可以呈现给用户异常
    rescue_from Lezhi::DataError do |e|
       Rack::Response.new([{ status: 0,
                          error_msg: e.message }.to_json], 200, { 'Content-Type' => 'application/json; charset=utf-8' }).finish
    end
    # 参数异常
    rescue_from Grape::Exceptions::ValidationErrors do |e|
        response_entity =  { status: 0, error_msg: :bad_request }
        if Rails.env.production?
          m = []
          e.each do |attribute, errors|     
            m << (attribute.to_s+": "+errors.to_s)#.gsub("%{attribute}", attribute)
          end
          response_entity[:detail] = m * ','
        end
        Rack::Response.new([response_entity.to_json], 400)
    end




  end
end
