################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="xbmc-addon-callbacks"
PKG_VERSION="master"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/pilluli/service.xbmc.callbacks"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
#PKG_URL="https://codeload.github.com/pilluli/service.xbmc.callbacks/tar.gz/master"
PKG_DEPENDS_TARGET="toolchain Python"
PKG_PRIORITY="optional"
PKG_SECTION="mediacenter"
PKG_SHORTDESC="Callbacks for XBMC."
PKG_LONGDESC="Addon service for XBMC to call user defined scripts on specific callbacks such as player starts, stops, etc."
PKG_IS_ADDON="no"

PKG_AUTORECONF="no"

make_target()
{
: #Empty
}

makeinstall_target()
{
	mkdir -p $INSTALL/usr/share/xbmc/addons/service.xbmc.callbacks
 	cp -PRf service.xbmc.callbacks-master/resources $INSTALL/usr/share/xbmc/addons/service.xbmc.callbacks
 	cp -Pf service.xbmc.callbacks-master/addon.xml $INSTALL/usr/share/xbmc/addons/service.xbmc.callbacks
 	cp -Pf service.xbmc.callbacks-master/default.py $INSTALL/usr/share/xbmc/addons/service.xbmc.callbacks
}

unpack()
{
	[ -d $PKG_BUILD ] && rm -rf $PKG_BUILD

	mkdir -p $BUILD/${PKG_NAME}-${PKG_VERSION}
	tar xf $SOURCES/${PKG_NAME}/${PKG_VERSION}.tar.gz -C $BUILD/${PKG_NAME}-${PKG_VERSION}
}
