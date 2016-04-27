# Created by: ijliao
# $FreeBSD: head/devel/libassa/Makefile 393749 2015-08-08 22:42:15Z rodrigo $

PORTNAME=	libassa
DISTVERSION=	3.5.0
CATEGORIES=	devel
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${DISTVERSION:C/\.[0-9]*$//}

MAINTAINER=	rodrigo@FreeBSD.org
COMMENT=	C++ networking library and application framework

GNU_CONFIGURE=	yes
USES=		libtool pathfix pkgconfig
USE_LDCONFIG=	yes
PLIST_SUB=	ASSA_VERSION=${PORTVERSION:R:R}

WRKSRC=		${WRKDIR}/${PORTNAME}-${DISTVERSION:C/-.*$//}

post-patch:
	@${REINPLACE_CMD} -e '/^SUBDIRS/s: doc : :g' ${WRKSRC}/Makefile.in

post-install:
	${INSTALL_MAN} ${WRKSRC}/debian/assa-genesis.1 ${STAGEDIR}${PREFIX}/man/man1

.include <bsd.port.mk>
