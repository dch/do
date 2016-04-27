# $FreeBSD: head/x11/keybinder-gtk3/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	keybinder
PORTVERSION=	0.3.0
CATEGORIES=	x11
MASTER_SITES=	GENTOO
PKGNAMESUFFIX=	-gtk3
DISTNAME=	${PORTNAME}-3.0-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Library for registering keyboard shortcuts

LICENSE=	GPLv2

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-gtk-doc-html --without-html-dir
USES=		gmake libtool pathfix pkgconfig
USE_GNOME=	gtk30 introspection:build
USE_XORG=	x11 xext xrender
USE_LDCONFIG=	yes

PLIST_SUB+=	VERSION="3.0"

.include <bsd.port.mk>
