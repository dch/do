# $FreeBSD: head/devel/geany-plugin-devhelp/Makefile 380787 2015-03-08 18:43:08Z makc $

PORTNAME=	geany-plugin-devhelp
PORTVERSION=	${GEANY_VER}
CATEGORIES=	devel

MAINTAINER=	makc@FreeBSD.org
COMMENT=	Geany plugin: ${${GEANY_PLUGIN}_DESC}

LIB_DEPENDS=	libwnck-1.so:${PORTSDIR}/x11-toolkits/libwnck \
		libwebkitgtk-1.0.so:${PORTSDIR}/www/webkit-gtk2

USE_GNOME=	gconf2

.include "${.CURDIR}/../geany-plugins/files/Makefile.common"
.include <bsd.port.mk>
