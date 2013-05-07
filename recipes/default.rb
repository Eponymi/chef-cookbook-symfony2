#
# Cookbook Name:: symfony2
# Recipe:: default
#
# Copyright 2013, Dylan Johnson
#
# All rights reserved - Do Not Redistribute
#

include_recipe "symfony2::apache2"
# TO-DO: add support for different database drivers
include_recipe "symfony2::mysql"
include_recipe "symfony2::php"
include_recipe "symfony2::composer"

# create a swap file so composer will run
# TO-DO: clean this up; add an only_if memory under a certain amount
swap_file '/mnt/swap' do
  size      512    # MBs
end

# install libicu for jolicode-php-intl
# TO-DO: clean this up; look for libicu in other dirs; add to intl module recipe?
libicu_pkg = value_for_platform_family(
    [ "rhel", "fedora" ] => "libicu-dev",
    "debian" => "libicu-dev"
)

package libicu_pkg do
  action :install
end
