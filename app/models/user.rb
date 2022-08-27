class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cycles
  has_many :bookings

  validates :first_name,
            presence: {
              message: "Indiquez le prénom par lequel vos potentiels acheteurs peuvent vous appeler."
            }
  validates :last_name,
            presence: {
              message: "Indiquez le nom par lequel vos potentiels acheteurs peuvent vous appeler."
            }
  validates :phone,
            presence: {
              message: "Indiquez le numéro auquel vos potentiels acheteurs peuvent vous joindre. Nous ne communiquerons à personne d'autre."
            }
  validates :bio,
            presence: {
              message: "Présentez-vous en quelques mots : cela rassurera vos potentiels acheteurs."
            },
            length: {
              in: 50..500,
              too_short: "Dites-en nous un peu plus : depuis combien de temps être vous motard ? Sur quoi avez-vous roulé ?",
              too_long: "C'est un peu trop long : vous pourrez faire plus ample connaissance avec les autres motards avant de vendre votre moto."
            }
  validates :payment_preferences,
            presence: {
              message: "Indiquez le moyen de paiement que vous préférez. Mais soyez rassuré : ça ne vous engage à rien."
            }
  validates :birth_date,
            presence: {
              message: "Indiquez votre date de naissance. On s'en servira pour vous souhaiter un bon anniversaire l'année prochaine !"
            }
  validates :pro,
            presence: {
              message: "Indiquez si vous êtez un particulier ou un professionnel : c'est une information importante pour vos potentiels acheteurs."
            }
end
