# Created by: Grzegorz Blach <gblach@FreeBSD.org>
# $FreeBSD: head/devel/ninja16/Makefile 395168 2015-08-24 12:07:52Z gblach $

PORTNAME=	ninja
PORTVERSION=	1.6.0
DISTVERSIONPREFIX=	v
PORTEPOCH=	1
CATEGORIES=	devel
PKGNAMESUFFIX=	16

MAINTAINER=	gblach@FreeBSD.org
COMMENT=	Ninja is a small build system closest in spirit to Make

LICENSE=	APACHE20

USE_GITHUB=	yes
GH_ACCOUNT=	martine
GH_PROJECT=	ninja

CONFLICTS=	irc/ninja-[0-9]*
USES=		python:build

PLIST_FILES=	bin/ninja16
PORTDOCS=	COPYING HACKING.md README manual.asciidoc

OPTIONS_DEFINE=	DOCS

do-build:
	@(cd ${WRKSRC} && \
		CXX="${CXX}" CFLAGS="${CXXFLAGS}" ${PYTHON_CMD} configure.py --bootstrap)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ninja ${STAGEDIR}${PREFIX}/bin/ninja16
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	(cd ${WRKSRC} && \
	    ${INSTALL_DATA} COPYING HACKING.md README doc/manual.asciidoc \
	    ${STAGEDIR}${DOCSDIR})

.include <bsd.port.mk>
