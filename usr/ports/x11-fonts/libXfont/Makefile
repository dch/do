# Created by: Eric Anholt <anholt@FreeBSD.org>
# $FreeBSD: head/x11-fonts/libXfont/Makefile 382083 2015-03-24 11:35:26Z robak $

PORTNAME=	libXfont
PORTVERSION=	1.4.9
PORTEPOCH=	2
CATEGORIES=	x11-fonts

MAINTAINER=	x11@FreeBSD.org
COMMENT=	X font library

LIB_DEPENDS=	libfreetype.so:${PORTSDIR}/print/freetype2

XORG_CAT=	lib
USE_XORG=	xproto:both xtrans fontsproto:both fontenc
INSTALL_TARGET=	install-strip
USES+=	cpe
CPE_PRODUCT=	libxfont
CPE_VENDOR=	x

CONFIGURE_ARGS=--without-xmlto --disable-devel-docs

.include <bsd.port.mk>
