# frozen_string_literal: true

require 'mobb'

# shellで対話するときはコメントアウトしてね
set :service, 'slack'

helpers do
  def remind_mokumoku
    <<~MOKUMOKU
      @channel
      21:00 からリモートもくもくやるよ
      以下URLから参加してね

      https://discord.gg/PW529nv

      21:00 ~ もくもくTIME(VC×)
      23:00 ~ 報告、質問、雑談会
    MOKUMOKU
  end
end

on(/^olivia ping/) do
  'pong'
end

cron '0 19 * * 6', dest_to: 'リモートもくもく会' do
  remind_mokumoku
end
