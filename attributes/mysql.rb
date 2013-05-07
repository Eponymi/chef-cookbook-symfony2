include_attribute "default"
default["symfony2"]["mysql"]["database"] = "#{node['symfony2']['project_name']}"
default["symfony2"]["mysql"]["db_username"] = "#{node['symfony2']['project_name']}"
default["symfony2"]["mysql"]["db_password"] = "#{node['symfony2']['project_name']}"
