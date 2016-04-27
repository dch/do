# Created by: Ying-Chieh Liao <ijliao@FreeBSD.org>
# $FreeBSD: head/astro/sky2000/Makefile 383297 2015-04-05 15:15:49Z antoine $

PORTNAME=	sky2000
PORTVERSION=	0.2
CATEGORIES=	astro
MASTER_SITES=	SF/nova/catalogs/${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Binary representation of the Sky2000 star catalog

BROKEN=		No public distfiles

GNU_CONFIGURE=	yes

DATADIR=	${PREFIX}/share/nova

post-patch:
	@${REINPLACE_CMD} -e 's,/nova/,/share/nova/,' ${WRKSRC}/configure

.include <bsd.port.mk>
