# $FreeBSD: head/x11-themes/gnome-icons-dropline-nou/Makefile 354928 2014-05-23 11:09:26Z olgeni $

PORTNAME=	dropline-nou
PORTVERSION=	090208
CATEGORIES=	x11-themes gnome
MASTER_SITES=	http://www.silvestre.com.ar/icons/
DISTNAME=	Nou-${PORTVERSION}

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	Dropline Nou Icons for Gnome

USES=		tar:bzip2
WRKSRC=		"${WRKDIR}/Nou"

post-extract:
	@${RM} ${WRKSRC}/.icon-theme.cache

.include "${.CURDIR}/../gnome-icons/bsd.gnome-icons.mk"
.include <bsd.port.mk>
