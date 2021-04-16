class Vendor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :watches
  has_one_attached :front_id_image
  has_one_attached :back_id_image
  
  validates :last_name,
            :first_name,
            :kana_last_name,
            :kana_first_name,
            :shop_name, :email,
            :birth_date,
            :phone_number,
            :postcode,
            :prefecture_code,
            :city,
            :house_number,
            :front_id_image,
            :back_id_image,
            presence: true

  validates :kana_last_name, :kana_first_name, format: { with: /\A[ァ-ヶー－]+\z/, message: "カタカナで入力してしてください。" }
  validates :phone_number, format: { with: /\A[0-9]+\z/, message: "半角数字のみで入力してください。" }
  validates :postcode, length: { is: 7 }, numericality: true

  include JpPrefecture
  jp_prefecture :prefecture_code

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end
end
