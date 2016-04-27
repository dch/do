# Created by: Steve Franks <stevefranks@ieee.org>
# $FreeBSD: head/devel/lpc21isp/Makefile 346342 2014-02-27 14:14:51Z ehaupt $

PORTNAME=	lpc21isp
PORTVERSION=	1.85
CATEGORIES=	devel
MASTER_SITES=	SF
DISTNAME=	${PORTNAME}_${PORTVERSION:S/.//}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	ISP programmer tool for flashing NXP & Analog Devices ARM7 CPUs

LICENSE=	LGPL3 # (or later)

USES=		gmake
NO_WRKSUBDIR=	yes

PLIST_FILES=	bin/lpc21isp

post-patch:
	@${REINPLACE_CMD} -e \
		's|^CC .*=|CC ?=|' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
