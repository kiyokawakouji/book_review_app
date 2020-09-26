require 'rails_helper'

describe 'レビュー管理機能', type: :system do
    describe '一覧表示機能' do
        before do 
        # ユーザーAを作成しておく
        user_a = FactoryBot.create(user, name: 'ユーザーA', email: 'a@example.com')
        # 作者がユーザーAであるレビューを作成しておく
        FactoryBot.create(:review, name: '最初のレビュー', user: user_a)
        end

context 'ユーザーがログインしているとき' do
    before do 
        # ユーザーAがログインする
        visit login_path
        fill_in 'メールアドレス', with: 'a@example.com'
        fill_in 'パスワード', with: 'password'
        click_button 'ログインする'
    end 

    it 'ユーザーAが作成したレビューが表示される' do
        # 作成済みのレビューのタイトルが画面上に表示されていることを確認
        expect(page).to have_content '最初のレビュー'
    end
  end
 end


 describe 'レビュー新規作成機能' do
    let(:login_user) { :user_a }

    before do 
        visit new_review_path
        fill_in 'タイトル', with: review_name
        click_button '投稿する'
    end

    context '新規投稿画面でタイトルを入力したとき' do
        let(:review_name) { '新規投稿のテストを書く' }

        it '正常に投稿される' do
            expect(page).to have_selector 'alert-success', text: '新規投稿のテストを書く'
        end
    end

    context '新規投稿画面でタイトルを入力しなかったとき' do
        let(:review_name) { '' }

        it 'エラーになる' do
            within '#error_explanation' do
            expect(page).to have_content 'タイトルを入力してください'
        end
      end
    end
  end
end
