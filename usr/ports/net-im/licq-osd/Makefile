# Created by: nm@web.am
# $FreeBSD: head/net-im/licq-osd/Makefile 373636 2014-11-29 18:22:32Z tijl $

PORTNAME=	osd
PORTVERSION=	1.8.2
PORTEPOCH=	1
CATEGORIES=	net-im

MAINTAINER=	dinoex@FreeBSD.org
COMMENT=	OnScreenDisplay messages in licq

LIB_DEPENDS=	libxosd.so:${PORTSDIR}/misc/xosd \
		libboost_regex.so:${PORTSDIR}/devel/boost-libs
RUN_DEPENDS=	${LOCALBASE}/lib/licq/licq_qt4-gui.so:${PORTSDIR}/${LICQ_PORT}-qt-gui
# run dependency may be too strict, delete it if you use another
# plugin (gtk+) and wish run osd with it. i've not tested with
# plugins other than qt-gui

USES=		cmake gettext-tools

LOCALES=	be de cs es fr pt pt_BR ro ru sv sk
PLIST_FILES=	lib/licq/licq_osd.so \
		${LOCALES:C+^.*$+share/locale/&/LC_MESSAGES/licq_osd_plugin.mo+}

LICQ_PORT?=	net-im/licq

.include <bsd.port.pre.mk>

.include "${PORTSDIR}/${LICQ_PORT}/Makefile.inc"

.include <bsd.port.post.mk>
