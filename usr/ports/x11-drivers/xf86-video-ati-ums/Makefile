# $FreeBSD: head/x11-drivers/xf86-video-ati-ums/Makefile 374982 2014-12-19 23:03:54Z dumbbell $

PORTNAME=	xf86-video-ati
PORTVERSION=	6.14.6
PORTREVISION=	5
PKGNAMESUFFIX=	-ums
CATEGORIES=	x11-drivers

MAINTAINER=	x11@FreeBSD.org
COMMENT=	X.Org ati display driver

USE_GL=		gl
XORG_CAT=	driver
USE_XORG=	xf86driproto xineramaproto xf86miscproto glproto

CONFIGURE_ARGS+=--disable-kms
INSTALL_TARGET=	install-strip

.include <bsd.port.mk>
