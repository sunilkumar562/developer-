#!/usr/bin/env python
# This script should be run via sudo.
# COPYRIGHT (c) 2013-2016. THIS CODE AND THE SOFTWARE WHICH SUCH CODE RELATES TO
# (COLLECTIVELY THE "SOLUTION") ARE PROTECTED BY COPYRIGHT OWNED BY CLOUDENDURE LTD.
# ("CLOUDENDURE"). NO PART OF THE SOLUTION MAY THEREFORE BE COPIED, DUPLICATED,
# REPRODUCED, REPUBLISHED, RE-DISSEMINATED, CHANGED, ALTERED, LOANED, LICENSED,
# TRANSFERRED, DISTRIBUTED OR OTHERWISE DISCLOSED TO ANY THIRD PARTY WITHOUT THE
# PRIOR WRITTEN CONSENT OF CLOUDENDURE. THIS CODE MUST BE USED SOLELY FOR THE
# INTENDED PURPOSE FOR WHICH IT WAS PROVIDED TO YOU IN CONNECTION WITH CLOUDENDURE'S
# SOFTWARE, AND SHOULD NOT BE USED FOR ANY OTHER PURPOSE.

# CLOUDENDURE MAKES NO WARRANTY OF ANY KIND, EXPRESS, IMPLIED, OR STATUTORY,
# INCLUDING BUT NOT LIMITED TO ALL WARRANTIES OF MERCHANTABILITY, NON INFRINGEMENT
# OF THIRD PARTY'S INTELLECTUAL PROPERTY OR FITNESS FOR A PARTICULAR PURPOSE,
# RELATED TO THE SOLUTION. ANY USE OF THE SOLUTION, OR ANY PART THEREOF, AND ANY
# USE OR RELIANCE ON ANY OUTPUT RESULTING FROM USE OF THE SOLUTION IS AT THE USER'S
# SOLE RISK.

# IN NO EVENT WILL CLOUDENDURE BE LIABLE TO ANY USER OF THE SOLUTION OR ANY PART
# THEREOF, AND ANY OUTPUT RESULTING FROM USE OF THE SOLUTION FOR ANY DAMAGES
# WHATSOEVER, DIRECT OR INDIRECT, SPECIAL, CONSEQUENTIAL OR SIMILAR DAMAGES,
# INCLUDING ANY LOST PROFITS, REVENUES, GOODWILL OR LOST DATA ARISING OUT OF THIS
# AGREEMENT, THE USE OR INABILITY TO USE THE SOLUTION, THE PERFORMANCE OF THE
# SOLUTION, EVEN IF CLOUDENDURE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH
# DAMAGES.

import urllib2
import sys
import os
import subprocess
import stat


LOCAL_INSTALLER = "./cloudendure_installer"
URL_TEMPLATE = "https://console.cloudendure.com/installer_linux%d"


def main():

    print "CloudEndure Installer Downloader started!"

    if sys.maxint > (2**31):
        arch = 64
    else:
        arch = 32

    print "Downloading and running installer for a %d bit system..." % (arch)

    doing = ""
    try:
        doing = "downloading installer"

        url = URL_TEMPLATE % (arch)

        content = urllib2.urlopen(url).read()
        open(LOCAL_INSTALLER, "wb").write(content)

        doing = "preparing installer to run"
        currentStat = os.stat(LOCAL_INSTALLER).st_mode
        os.chmod(LOCAL_INSTALLER, currentStat | stat.S_IEXEC)

        doing = "running installer"
        return subprocess.call([LOCAL_INSTALLER] + sys.argv[1:])

    except Exception, e:
        print "Error %s! Please contact support@cloudendure.com" % (doing)
        print "Error details: ", e
        return -1

if __name__ == '__main__':
    ret = main()
    sys.exit(ret)
