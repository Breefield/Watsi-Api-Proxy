class ProxyController < ApplicationController
  def proxy
    require 'open-uri'
    passthrough = open(params[:url]).read if params[:url].present?
    render json: passthrough || '', callback: params[:callback]
  end
end
