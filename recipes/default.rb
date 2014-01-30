apt_repository "apt-fast" do
  uri "http://ppa.launchpad.net/apt-fast/stable/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "CA8DA16B"
  action :add
end

package "apt-fast" do
  action :install
end
