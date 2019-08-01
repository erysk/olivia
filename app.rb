# frozen_string_literal: true

require 'mobb'

# shellで対話する場合はコメントアウトする
set :service, 'slack'

helpers do
  def remind_mokumoku
    # 何かゴニョゴニョするならここで
    '@channel そろそろリモートもくもく会が始まるのでは'
  end
end

on(/^olivia ping/) do
  'pong'
end

cron '0 19 * * 6', dest_to: 'リモートもくもく会' do
  remind_mokumoku
end
