Quando('solicitado o metodo GET no recurso {string}') do |endpoint|
  @response = @challenge.get_response(endpoint)
end

Quando('valido o contrato {string}') do |schema|
  expect(@response.body).to match_json_schema("#{schema}")
end

Entao('a API deve me retornar o status {string}') do |status|
  raise "Expected: #{status} but we received: #{@response.code}" unless expect(@response.code).to equal(status.to_i)
end
