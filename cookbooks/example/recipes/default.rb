directory node[:tmpdirectory] do
  owner "slicedbread"
  mode "0755"
  action :create
end

file node[:tmpdirectory]+'/example.txt' do
  owner "slicedbread"
  mode "0755"
  content 'Hi!'
  action :create
end

template node[:tmpdirectory]+'/templateexample.txt' do
  owner "slicedbread"
  mode "0755"
  source "somefile.erb"
  action :create
end