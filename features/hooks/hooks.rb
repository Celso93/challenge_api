# frozen_string_literal: true

Before do |_scn|
  @challenge = Challenge.new
end

After do |scn|
  binding.pry if scn.failed? && ENV['debug']
end

at_exit do
  ReportBuilder.configure do |config|
    config.json_path = 'data/report.json'
    config.html_report_path = "data/report#{Time.now.strftime('%d.%m')}"
    config.report_types = [:html]
    config.report_title = 'Challenge Report API'
    config.additional_info = { Date: Time.now.strftime('%d/%m/%Y,%H %H:%M').to_s,
                               url: 'desafioonline.webmotors.com.br/api/OnlineChallenge' }
  end

  ReportBuilder.build_report
end
