# Created by: Andrew Pantyukhin <infofarmer@FreeBSD.org>
# $FreeBSD: head/audio/optimfrog/Makefile 382736 2015-03-30 21:26:44Z bapt $

PORTNAME=	optimfrog
DISTVERSION=	4.520b1
CATEGORIES=	audio linux
MASTER_SITES=	CENKES
DISTNAME=	OptimFROG_All_Linux_x86_${DISTVERSION:S/.//}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Lossless audio codec

ONLY_FOR_ARCHS=	amd64 i386

BROKEN=		No public distfiles

NO_CDROM=	No commercial use
NO_BUILD=	yes
USES=		zip
USE_LINUX=	yes
PLIST_FILES=	bin/off bin/ofr bin/ofs

do-install:
	@${BRANDELF} -t Linux ${WRKSRC}/off ${WRKSRC}/ofr ${WRKSRC}/ofs
	@${INSTALL_PROGRAM} ${WRKSRC}/off ${WRKSRC}/ofr ${WRKSRC}/ofs ${STAGEDIR}${PREFIX}/bin/

.include <bsd.port.mk>
