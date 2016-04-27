# Created by: gahr@FreeBSD.org
# $FreeBSD: head/lang/nx/Makefile 339933 2014-01-16 16:57:20Z gahr $

PORTNAME=	nx
DISTVERSION=	2.0b5
CATEGORIES=	lang
MASTER_SITES=	SF/next-scripting/${DISTVERSION}/
DISTNAME=	nsf${DISTVERSION}

MAINTAINER=	tcltk@FreeBSD.org
COMMENT=	Highly flexible, Tcl-based, object-oriented scripting language

LICENSE=	MIT

OPTIONS_DEFINE=	DOCS

CONFLICTS=	xotcl-1.*

USES+=		tcl:85+
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--exec-prefix=${PREFIX} \
		--with-tcl=${TCL_LIBDIR} \
		--with-tclinclude=${TCL_INCLUDEDIR}
PLIST_SUB+=	PKGNAME=${DISTNAME}
PORTDOCS=	*

post-patch:
	${CP} ${FILESDIR}/genStubs.tcl ${WRKSRC}

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	cd ${WRKSRC}/doc && ${COPYTREE_SHARE} \* ${STAGEDIR}${DOCSDIR}

regression-test: build
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} test

.include <bsd.port.mk>
