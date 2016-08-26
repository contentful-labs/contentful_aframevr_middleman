require 'contentful_middleman'
require 'slim'

activate :contentful do |f|
  f.space = { minecraft: 'zh42n1tmsaiq' }
  f.access_token = 'c261b0c2bd779248f334fec8ae33866408816ed19de8fa2978b27cac704c40ae'
  f.cda_query = { include: 4, order: 'sys.createdAt' }
  f.all_entries = true
  f.content_types = { map: 'map' }
end

activate :livereload

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

configure :build do
end
