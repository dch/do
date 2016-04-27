# Created by: Antoine Brodin <antoine@FreeBSD.org>
# $FreeBSD: head/devel/liblnk/Makefile 390165 2015-06-20 15:16:06Z antoine $

PORTNAME=	liblnk
PORTVERSION=	20150617
DISTVERSIONPREFIX=	alpha-
CATEGORIES=	devel
MASTER_SITES=	https://github.com/libyal/liblnk/releases/download/${PORTVERSION}/ \
		LOCAL/antoine

MAINTAINER=	antoine@FreeBSD.org
COMMENT=	Library and tools to access the Windows shortcut file (LNK) format

LICENSE=	LGPL3

LIB_DEPENDS=	libfwsi.so:${PORTSDIR}/devel/libfwsi

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-python --with-libintl-prefix=${LOCALBASE} --with-libfwsi=${LOCALBASE}
USES=		gettext libtool pathfix python
USE_LDCONFIG=	yes
INSTALL_TARGET=	install-strip
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

PORTDOCS=	AUTHORS ChangeLog

OPTIONS_DEFINE=	DOCS

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
