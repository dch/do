# Created by: gurkan@phys.ethz.ch
# $FreeBSD: head/archivers/zipper/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	zipper
PORTVERSION=	1.5
PORTREVISION=	2
CATEGORIES=	archivers gnustep
MASTER_SITES=	SAVANNAH/gap
DISTNAME=	Zipper-${PORTVERSION}

MAINTAINER=	bofh@FreeBSD.org
COMMENT=	Tool for inspecting the contents of a compressed archive

USES=		gnustep
USE_GNUSTEP=	back build

post-patch:
	cd ${WRKSRC} && ${FIND} . -name "*#*" -exec ${RM} -f -v "{}" ";"

.include <bsd.port.mk>
