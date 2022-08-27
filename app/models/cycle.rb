class Cycle < ApplicationRecord
  belongs_to :user
  belongs_to :license
  belongs_to :brand
  belongs_to :model
  has_many :bookings

  validates :title,
            presence: {
              message: "Vous devez donner un titre à votre annonce."
            },
            length: {
              in: 15..80,
              too_short: "Soyez un peu plus précis : c'est la première chose que vos potentiels acheteurs vont voir.",
              too_long: "C'est un peu trop long : gardez les détails pour la description."
            }
  validates :description,
            presence: {
              message: "Vous devez donner un titre à votre annonce."
            },
            length: {
              in: 80..1000,
              too_short: "Dites-en plus à vos potentiels acheteurs : pourquoi la vendez-vous ? En quel état est-elle ?",
              too_long: "C'est un peu trop long : concentrez-vous sur les informations essentielles pour l'acheteur."
            }
  validates :color,
            presence: {
              message: "Choisissez la couleur qui décrit le mieux votre moto."
            }
  validates :general_state,
            presence: {
              message: "Choisissez l'option qui décrit le mieux l'état général de votre moto."
            }
  validates :location,
            presence: {
              message: "Indiquez où les acheteurs peuvent récupérer la moto."
            }
  validates :price,
            presence: {
              message: "Indiquez le prix auquel vous souhaitez vendre votre moto."
            }
  validates :release_date,
            presence: {
              message: "Indiquez quand votre moto est arrivée sur le marché."
            }
  validates :user_combined_range,
            presence: {
              message: "Indiquez l'autonomie réelle de votre moto - celle que vous avez constaté, pas celle donnée par le constructeur."
            },
            numericality: {
              in: 10..800,
              too_short: "L'autonomie réelle est probablement un peu trop faible. Combien de kilomètres pouvez-vous rouler avec votre moto habituellement ?",
              too_long: "L'autonomie réelle est probablement inférieur à ça. Combien de kilomètres pouvez-vous rouler avec votre moto habituellement ?"
            }
  validates :kilometrage,
            presence: {
              message: "Indiquez combien de kilomètres le compteur affiche."
            }
  validates :release_date,
            presence: {
              message: "Indiquez l'état de vos pneumatiques en quelques mots."
            }
  validates :battery_soh,
            presence: {
              message: "Indiquez l'état de santé de votre batterie, comme indiqué sur le tableau de bord."
            },
            numericality: {
              in: 0..100,
              too_short: "L'état de santé de votre batterie se mesure en % - il ne peut pas être négatif.",
              too_long: "L'état de santé de votre batterie se mesure en % - il ne peut pas être supérieur à 100."
            }
  validates :nb_of_owners,
            presence: {
              message: "Inscrivez 1 si vous êtes le premier propriétaire de cette moto. Sinon, ajoutez le nombre de propriétaires avant vous."
            }
end
