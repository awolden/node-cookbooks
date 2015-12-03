#
# Cookbook Name:: zsh
# Recipe:: default
#
# Copyright 2008-2015, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

package 'zsh' do
  action :install
end

case node['platform_family']
when 'debian'
  package 'zsh-doc' do
    action :install
  end
when 'rhel', 'fedora'
  package 'zsh-html' do
    action :install
  end
end
