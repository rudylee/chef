#
# Cookbook Name:: apache2
# Recipe:: vhosts
#
# Copyright 2012, Adam Brett. All Rights Reserved.
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
include_recipe "apache2"

web_app "audi" do
  server_name "local.audi.com"
  server_aliases ["audi"]
  directory_index ["index.html", "index.php"]
  allow_override "all"
  docroot "/vagrant"
end