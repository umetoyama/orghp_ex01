require 'rails_helper'

RSpec.describe Profile, type: :model do
  before do
    @profile = FactoryBot.build(:profile)
  end

  describe 'プロフィールの保存' do
    context 'プロフィールが保存できる時' do
      it '全ての値が存在する場合保存できる' do
        expect(@profile).to be_valid
      end
    end
    context 'プロフィールが保存できない場合' do
      it '役職が空の場合保存できない' do
        @profile.position_id = ''
        @profile.valid?
        expect(@profile.errors.full_messages).to include("Position is not a number")
      end
      it '役職に"---"が選択されている場合保存できない' do
        @profile.position_id = '---'
        @profile.valid?
        expect(@profile.errors.full_messages).to include("Position is not a number")
      end
    end
  end
end