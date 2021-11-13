# frozen_string_literal: true

# Challenge API
class Challenge
  include HTTParty
  base_uri('https://desafioonline.webmotors.com.br/api/OnlineChallenge')

  def initialize
    @make_id  = [1, 2, 3]
    @model_id = [1, 3, 4, 8]
    @page     = [1, 3]
  end

  def get_response(endpoint)
    resource = case endpoint
               when '/Make'     then endpoint
               when '/Model'    then "#{endpoint}?MakeID=#{@make_id.sample}"
               when '/Version'  then "#{endpoint}?ModelID=#{@model_id.sample}"
               when '/Vehicles' then "#{endpoint}?Page=#{@page.sample}"
               end

    self.class.get(resource)
  end
end
