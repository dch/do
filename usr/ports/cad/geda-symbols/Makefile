# Created by: bruno schwander <bruno@tinkerbox.org>
# $FreeBSD: head/cad/geda-symbols/Makefile 383349 2015-04-05 18:34:45Z bapt $

PORTNAME=	symbols
PORTVERSION=	1.4.3
PORTEPOCH=	1
CATEGORIES=	cad
MASTER_SITES=	ftp://ftp.geda.seul.org/pub/geda/release/v1.4/${PORTVERSION}/ \
		http://geda.seul.org/release/v1.4/${PORTVERSION}/
PKGNAMEPREFIX=	geda-
DISTNAME=	${PKGNAMEPREFIX}${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	The gEDA's symbols

BROKEN=		Unfetchable
DATADIR=	${PREFIX}/share/geda
DOCSDIR=	${PREFIX}/share/doc/geda

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-docdir=${DOCSDIR}
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

post-patch:
	@${REINPLACE_CMD} -E \
		-e "s,^(DATADIR[[:space:]]*=[[:space:]]*)gEDA,\1geda," \
		${WRKSRC}/configure

post-install:
	@${TOUCH} ${STAGEDIR}${DATADIR}/sym/local/.keep_me

.include <bsd.port.mk>
