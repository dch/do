# Created by: Sergei Kolobov <sergei@kolobov.com>
# $FreeBSD: head/devel/poslib/Makefile 366410 2014-08-28 14:58:33Z tijl $

PORTNAME=	poslib
PORTVERSION=	1.0.6
PORTREVISION=	2
CATEGORIES=	devel dns
MASTER_SITES=	SF/posadis/${PORTNAME}/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Posadis C++ DNS library

LICENSE=	GPLv2 # (or later)

OPTIONS_DEFINE=	DOCS EXAMPLES

GNU_CONFIGURE=	yes
INSTALL_TARGET=	install-strip
USES=		libtool
USE_LDCONFIG=	yes

PLIST_SUB=	VERSION="${PORTVERSION}"

post-patch:
	@${REINPLACE_CMD} -e \
		'/CXXFLAGS/s|-O0|$$CXXFLAGS| ; \
		 /LIBS=/s|-lstdc++||' ${WRKSRC}/configure

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
.for i in AUTHORS ChangeLog NEWS README TODO
	(cd ${WRKSRC} && ${INSTALL_DATA} ${i} \
		${STAGEDIR}${DOCSDIR})
.endfor
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	(cd ${WRKSRC}/examples && ${INSTALL_DATA} *.cpp \
		${STAGEDIR}${EXAMPLESDIR})

.include <bsd.port.mk>
