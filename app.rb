# frozen_string_literal: true

require 'mobb'

set :service, 'slack'

helpers do
  def remind_mokumoku
    # 何かゴニョゴニョするならここで
    '@channel そろそろリモートもくもく会が始まるのでは'
  end

  def time_report
    "#{Time.now.hour}時をお伝えします。"
  end
end

on(/^olivia ping/) do
  'pong'
end

cron '50 20 * * 6' do
  remind_mokumoku
end

cron '0 * * * *' do
  time_report
end
