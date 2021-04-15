class Vendor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :confirmable

  has_many :watches
  has_one_attached :front_id_image
  has_one_attached :back_id_image

  def password_required?
    super if confirmed?
  end

  def password_match?
    self.errors[:password] << "can't be blank" if password.blank?
    self.errors[:password_confirmation] << "can't be blank" if password_confirmation.blank?
    self.errors[:password_confirmation] << "does not match password" if password != password_confirmation
    password == password_confirmation && !password.blank?
  end
  
  validates :last_name,
            :first_name,
            :kana_last_name,
            :kana_first_name,
            :shop_name,
            :email,
            :birth_date,
            :phone_number,
            :postcode,
            :prefecture_code,
            :city,
            :house_number,
            :front_id_image,
            :back_id_image, presence: true, on: :update

  validates :email, uniqueness: { case_sensitive: false, message: "そのemailアドレスはすでに使用されています。" }
  validates :shop_name, uniqueness: { case_sensitive: false, message: "そのショップ名はすでに使用されています。" }, on: :update
  validates :kana_last_name, :kana_first_name, format: { with: /\A[ァ-ヶー－]+\z/, message: "カタカナで入力してしてください。" }, on: :update
  validates :phone_number, format: { with: /\A[0-9]+\z/, message: "半角数字のみで入力してください。" }, on: :update
  validates :postcode, length: { is: 7 }, numericality: true, on: :update

  include JpPrefecture
  jp_prefecture :prefecture_code

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end
end
