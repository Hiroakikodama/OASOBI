# :name 空欄は登録できない。
      # ユニークな名前でなければ登録できない。
      # 最大16文字まで。
      # 小文字英数字のみ許可。

require 'rails_helper'

RSpec.describe 'Userモデルのテスト', type: :model do
  describe "バリデーションのテスト" do
    context "nameカラム" do
      it "空欄ではないこと" do
        @user = User.new(name: nil)
        @user.valid?
        expect(@user.valid?).to eq(false)
      end

      it "重複していないこと" do
        User.create(
          name: "director",
          password: "osakana3"
        )
        @user = User.new(
          name: "director",
          password: "osakana3"
        )
        @user.valid?
        expect(@user.valid?).to eq(false)
      end

      it "16文字以内であること" do
        @user = User.new(
          name: "testtesttesttest1",
          password: "osakana3"
        )
        @user.valid?
        expect(@user.valid?).to eq(false)
      end

      it "小文字英数字であること" do
        @user = User.new(
          name: "水族館長",
          password: "osakana3"
        )
        @user.valid?
        expect(@user.valid?).to eq(false)
      end
    end

    context "passwordカラム" do
      it "8文字以上であること" do
        @user = User.new(
          name: "director",
          password: ""
        )
        @user.valid?
        expect(@user.valid?).to eq(false)
      end
    end
  end
end
