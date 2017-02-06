# coding: utf-8
class User < ApplicationRecord
  belongs_to :group, dependent: :destroy # ユーザーが削除されると親のグループも削除される(消されたグループに関連付けされていたユーザーのgroup_idはそのまま)
  has_many :posts, dependent: :destroy # ユーザーが削除されると記事も削除される
end
