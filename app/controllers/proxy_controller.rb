class ProxyController < ApplicationController
  def proxy
    # require 'open-uri'
    # passthrough = open(params[:url]).read if params[:url].present?
    # render json: passthrough || {empty: true}, callback: params[:callback]

    render text: "I give up"
  end
end
