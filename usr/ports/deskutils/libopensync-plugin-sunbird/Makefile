# Created by: Alexander Logvinov <ports@logvinov.com>
# $FreeBSD: head/deskutils/libopensync-plugin-sunbird/Makefile 383353 2015-04-05 18:59:58Z bapt $

PORTNAME=	libopensync-plugin-sunbird
PORTVERSION=	0.22
PORTREVISION=	4
CATEGORIES=	deskutils
MASTER_SITES=	http://www.opensync.org/download/releases/${PORTVERSION}/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Sunbird plugin for the OpenSync framework

LIB_DEPENDS=	libopensync.so:${PORTSDIR}/devel/libopensync022 \
		libneon.so:${PORTSDIR}/www/neon

BROKEN=		Unfetchable
USES=		libtool pkgconfig tar:bzip2
GNU_CONFIGURE=	yes
USE_GNOME=	glib20 libxml2

PORTDOCS=	AUTHORS COPYING ChangeLog README

OPTIONS_DEFINE=	DOCS

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
