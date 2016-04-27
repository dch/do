# Created by: Koop Mast <kwm@FreeBSD.org>
# $FreeBSD: head/sysutils/mate-polkit/Makefile 393031 2015-07-27 20:19:33Z kwm $

PORTNAME=	mate-polkit
PORTVERSION=	1.10.0
CATEGORIES=	sysutils mate
MASTER_SITES=	MATE
DIST_SUBDIR=	mate

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	MATE frontend to the PolicKit framework

BUILD_DEPENDS=	itstool:${PORTSDIR}/textproc/itstool
LIB_DEPENDS=	libpolkit-gobject-1.so:${PORTSDIR}/sysutils/polkit

PORTSCOUT=	limitw:1,even

USES=		gettext gmake libtool pathfix pkgconfig tar:xz
USE_GNOME=	gtk20 intlhack introspection:build
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-gtk-doc \
		--localstatedir=/var
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
INSTALL_TARGET=	install-strip

.include <bsd.port.mk>
