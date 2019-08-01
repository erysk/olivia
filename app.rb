# frozen_string_literal: true

require 'mobb'

# shellで対話するときはコメントアウトしてね
set :service, 'slack'

helpers do
  def remind_mokumoku
    <<~MOKUMOKU
      @channel
      21:00 からリモートもくもくやりますよ(入退室自由)
      以下URLから参加してください(Discord必須)

      https://discord.gg/PW529nv

      21:00 ~ もくもくTIME(原則チャットのみ)
      23:00 ~ VC(報告、雑談会)
    MOKUMOKU
  end
end

on(/^olivia ping/) do
  'pong'
end

cron '0 19 * * 6', dest_to: 'リモートもくもく会' do
  remind_mokumoku
end
