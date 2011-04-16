class Fan < ActiveRecord::Base
  validates_email_format_of :email, :message => I18n.t('validation.error.email')
end
