class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :render_notifications

  protected

  # if user_signed_in?
  #   def render_notifications
  #     notifications = current_user.passive_notifications.page(params[:page]).per(8)

      # if notifications.present?
      #   notifications.where(checked: false).each do |notification|
      #     notification.update_attributes(checked: true)
      #   end
      # end

      # 自分がチャットを送った時の通知は表示しない。(相手がチャットを送った時のみ)
  #     @my_notifications = notifications.where.not(visitor_id: current_user.id)
  #   end
  # end

  #ログイン後の遷移パス
  def after_sign_in_path_for(resource)
    if user_signed_in?
      flash[:notice] = "ログインに成功しました！"
      posts_top_path
    else
      root_path
    end
  end

  #新規登録後の遷移パス
  def after_sign_up_path(resource)
    if user_signed_up?
      flash[:notice] = "会員登録しました！"
      root_path
    else
      root_path
    end
  end

  #ログアウト後の遷移
  def after_sign_out_path_for(resource)
    if resource == :admin
      admin_session_path
    else
      flash[:notice] = "ログアウトしました！"
      homes_top_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :nickname, :gender, :birthday, :postal_code, :prefecture_code, :municipality, :nearest_station, :is_deleted, :uid, :provider])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end

end
