srv_col_name = "testserver"
search_tag = "server:testing=tag"

server_collection srv_col_name do
  tags search_tag
end

ruby_block "Spit out tags" do
  block do
    node[:server_collection][srv_col_name].each do |server|
      server.each do |tag|
        Chef::Log.info("Server #{server} had tag #{tag}")
      end
    end
  end
end