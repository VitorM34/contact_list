# no caso o uso do has aqui ele cria um hash da senha pra nos o que deixa a nossa aplicacao muito mais segura
# ele da a senha mastigada para nos
# no caso a gente usa o validates onde eu passo o atributo nome q ele deve ser obrigatorio e passo  a quantidade maxima de caracteres onde o mesmo nao exede

class User < ApplicationRecord
    has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

    validates :name, presence: true, length: { maximum: 50 }

    validates :password, length: { minimum: 6 }

    validates :email, presence: true, length: {maximum:255},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: { case_sensitive: true}

    has_many :contacts
end





