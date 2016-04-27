# Created by: Rahul Siddharthan <rsidd@online.fr>
# $FreeBSD: head/audio/vsound/Makefile 362014 2014-07-15 23:11:12Z adamw $

PORTNAME=	vsound
PORTVERSION=	0.6
PORTREVISION=	6
CATEGORIES=	audio
MASTER_SITES=	http://www.vsound.org/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Utility for capturing audio streams from programs with OSS output

BUILD_DEPENDS=	sox:${PORTSDIR}/audio/sox
RUN_DEPENDS=	sox:${PORTSDIR}/audio/sox

USES=		libtool
GNU_CONFIGURE=	yes

OPTIONS_DEFINE=	DOCS

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${STAGEDIR}${DOCSDIR}
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/lib/vsound/libvsound.so

.include <bsd.port.mk>
