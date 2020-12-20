# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_name  (name) UNIQUE
#
class User < ApplicationRecord
  has_secure_password

  validates :name,
    presence: true,
    uniqueness: true,
    length: { maximum: 16 },
    format: {
      with: /\A[a-z0-9]+\z/,
      message: 'は小文字英数字で入力してください'
    }
    # スラッシュで囲まれた範囲が正規表現。withに囲まれた範囲にマッチする文字列のみを許可。
    # \Aが行頭、\zが行末を表す。

  validates :password,
    length: { minimum: 8 }
end
