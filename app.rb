# frozen_string_literal: true

require 'mobb'

# shellで対話するときはコメントアウトしてね
set :service, 'slack'

helpers do
  def remind_mokumoku
    <<~MOKUMOKU
      <!channel>

      21時からリモートもくもくやるよ！

      21:00 ~ もくもくTIME(VC×)
      23:00 ~ 報告・質問・雑談

      ↓↓↓↓  参加はこちら  ↓↓↓↓
      https://discord.gg/PW529nv
    MOKUMOKU
  end
end

on(/^olivia ping/) do
  'pong'
end

on(/^olivia stop/) do
  puts 'アプリケーションを停止します'
  exit!
end

cron '0 19 * * 6', dest_to: 'リモートもくもく会' do
  remind_mokumoku
end
