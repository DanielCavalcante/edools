class Aluno < ActiveRecord::Base

  has_many :curso
  has_many :alunos

  validates_presence_of :nome, :email
  validates_associated :curso
  validates_format_of :email, with: EMAIL_FORMAT

  def self.search(search)
    where("nome LIKE ?", "%#{search}%")
  end
end
