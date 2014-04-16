require "http_error_cats"

module HttpErrorCats
  class ErrorsController < ::ApplicationController

    def show
      return unless HttpErrorCats.codes == :all
      return if HttpErrorCats.codes.is_a?(Array) && !HttpErrorCats.codes.include?(status_code)
      html = HttpErrorCats.html
      html = html.call status_code if html.is_a?(Proc)
      render inline: html, layout: HttpErrorCats.layout
    end

    def status_code
      params[:code] || 500
    end
  end
end