# coding: utf-8

require 'top_pagination/hooks'

Redmine::Plugin.register :top_pagination do
  name 'Top Pagination plugin'
  author 'Takumi Endo'
  description 'Show pagination items on the top of issues tables.'
  version '1.0.0'
end
