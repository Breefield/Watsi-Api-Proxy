class ProxyController < ApplicationController
  def proxy
    begin
      require 'open-uri'
      passthrough = open(params[:url]).read if params[:url].present?
      render json: passthrough || {empty: true}, callback: params[:callback]
    rescue Exception => e
      render text: e.message
    end
  end
end
