class DeviseMailer < Devise::Mailer
  default template_path: 'devise/mailer'

  def confirmation_instructions(record, token, opts = {})
    opts[:subject] = "Xác nhận đăng ký tài khoản"
    super
  end
end
