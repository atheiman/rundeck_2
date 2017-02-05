include_recipe 'java'

yum_repository 'rundeck' do
  baseurl 'https://dl.bintray.com/rundeck/rundeck-rpm'
  enabled true
  gpgcheck true
  gpgkey 'http://rundeck.org/keys/BUILD-GPG-KEY-Rundeck.org.key'
end

yum_package 'rundeck'

include_recipe "#{cookbook_name}::aclpolicies"
