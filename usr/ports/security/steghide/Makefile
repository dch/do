# Created by: RaRa Rasputin <rasputin@submonkey.net>
# $FreeBSD: head/security/steghide/Makefile 386097 2015-05-11 18:34:57Z mat $

PORTNAME=	steghide
PORTVERSION=	0.5.1
PORTREVISION=	6
CATEGORIES=	security
MASTER_SITES=	SF

MAINTAINER=	arved@FreeBSD.org
COMMENT=	Steganography tool to hide data in binary files

LIB_DEPENDS=	libmcrypt.so:${PORTSDIR}/security/libmcrypt \
		libmhash.so:${PORTSDIR}/security/mhash

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

USES=		gettext gmake libtool:build perl5
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include -fpermissive
LIBS+=		-L${LOCALBASE}/lib -lintl -lmcrypt
MAKE_ARGS=	LIBTOOL="${LOCALBASE}/bin/libtool"

OPTIONS_DEFINE=	DOCS

post-patch:
	@${REINPLACE_CMD} '/CXXFLAGS=/s|-O2|${CXXFLAGS}|' ${WRKSRC}/configure

.include <bsd.port.mk>
