class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def js_authenticate_user!
      render js: "location.href='/users/sign_in';" unless user_signed_in?  #바로 자바스크립트를 쓸 수 있음
  end
end

# rediret to 는 끝나고 또 다른 url로 이동시킴
# render는 바로 끝남.
