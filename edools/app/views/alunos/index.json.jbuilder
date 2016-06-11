json.array!(@alunos) do |aluno|
  json.extract! aluno, :id, :nome, :email, :ativo
  json.url aluno_url(aluno, format: :json)
end
