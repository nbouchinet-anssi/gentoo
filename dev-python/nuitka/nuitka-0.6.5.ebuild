# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7} )
inherit distutils-r1 eutils

DESCRIPTION="Python to native compiler"
HOMEPAGE="https://www.nuitka.net"
SRC_URI="https://nuitka.net/releases/${P^}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-python/appdirs[${PYTHON_USEDEP}]
	>dev-util/scons-3.0.5[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/${P^}"

pkg_postinst() {
	optfeature "support for stand-alone executables" app-admin/chrpath
}
