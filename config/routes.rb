# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                   aquaria GET    /aquaria(.:format)                                                                       aquaria#index
#                           POST   /aquaria(.:format)                                                                       aquaria#create
#              new_aquarium GET    /aquaria/new(.:format)                                                                   aquaria#new
#             edit_aquarium GET    /aquaria/:id/edit(.:format)                                                              aquaria#edit
#                  aquarium GET    /aquaria/:id(.:format)                                                                   aquaria#show
#                           PATCH  /aquaria/:id(.:format)                                                                   aquaria#update
#                           PUT    /aquaria/:id(.:format)                                                                   aquaria#update
#                           DELETE /aquaria/:id(.:format)                                                                   aquaria#destroy
#                refile_app        /attachments                                                                             #<Refile::App app_file="/home/vagrant/.rbenv/versions/2.5.7/lib/ruby/gems/2.5.0/bundler/gems/refile-46b4178654e6/lib/refile/app.rb">
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :aquaria
end
