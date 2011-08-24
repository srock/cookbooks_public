log "IP is #{node[:ipaddress]}"

right_link_tag "web:active=true"
right_link_tag "web:ip=#{node[:ipaddress]}"

server_collection "active_login_servers" do
  tags "rs_login:state=active"
end

node[:server_collection].each do |tag|
  log "Server tag: #{tag}"
end