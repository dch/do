# Created by: David O'Brien (obrien@NUXI.com)
# $FreeBSD: head/security/ddos_scan/Makefile 345955 2014-02-25 10:22:48Z ehaupt $

PORTNAME=	ddos_scan
PORTVERSION=	1.6
PORTREVISION=	1
CATEGORIES=	security
MASTER_SITES=	http://staff.washington.edu/dittrich/misc/
DISTNAME=	${PORTNAME}
EXTRACT_SUFX=	.tar

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Scans for a limited set of distributed denial of service agents

ALL_TARGET=	dds

OPTIONS_DEFINE=	DOCS

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/dds ${STAGEDIR}${PREFIX}/sbin
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	@${INSTALL_MAN} ${WRKSRC}/README ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
