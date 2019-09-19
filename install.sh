#! /bin/bash

# 
#            --------------------------------------------------
#                          Social Fisher (SocFish)                
#            --------------------------------------------------
#          Copyright (C) <2019>  <Entynetproject (Ivan Nikolsky)>
#
#        This program is free software: you can redistribute it and/or modify
#        it under the terms of the GNU General Public License as published by
#        the Free Software Foundation, either version 3 of the License, or
#        any later version.
#
#        This program is distributed in the hope that it will be useful,
#        but WITHOUT ANY WARRANTY; without even the implied warranty of
#        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#        GNU General Public License for more details.
#
#        You should have received a copy of the GNU General Public License
#        along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
#    About Author :   
#    Founder   : Entynetproject (Ivan Nikolsky)
#    Site      : http://entynetproject.simplesite.com/
#    Instagram : @entynetproject 
#    Twitter   : @entynetproject
#    Email     : entynetproject@gmail.com
#

RSA="\033[31m"
YSA="\033[1;93m"
CEA="\033[0m"
WHS="\033[0;97m"

WHO="$( whoami )"

if [[ "$WHO" != "root" ]]
then
sleep 1
echo -e "$RS"run it as"$CE" "$YS"root"$CE"
sleep 1
echo -e "$RS"or use"$CE" "$YS"sudo"$CE"
sleep 1
exit
fi

if [[ -d ~/socfish ]]
then
cd ~/socfish
{
cp bin/socfish /usr/local/bin
chmod +x /usr/local/bin/socfish
cp bin/socfish /bin
chmod +x /bin/socfish
} &> /dev/null
else
cd ~
{
git clone https://github.com/entynetproject/socfish.git
cd  ~/socfish
cp bin/socfish /usr/local/bin
chmod +x /usr/local/bin/socfish
cp bin/socfish /bin
chmod +x /bin/socfish
} &> /dev/null
fi
