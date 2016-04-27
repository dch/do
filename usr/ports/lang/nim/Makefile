# Created by: Neal Nelson <ports@nicandneal.net>
# $FreeBSD: head/lang/nim/Makefile 383175 2015-04-03 20:32:14Z robak $

PORTNAME=	nim
PORTVERSION=	0.10.2
PORTREVISION=	0
CATEGORIES=	lang
MASTER_SITES=	http://nim-lang.org/download/

MAINTAINER=	ports@nicandneal.net
COMMENT=	The Nim programming language

LICENSE=	MIT

OPTIONS_DEFINE=	DOCS

MAKE_JOBS_UNSAFE=	yes
USES=		compiler zip

.include <bsd.port.pre.mk>

post-patch:
.if ${COMPILER_TYPE} == clang
	@${REINPLACE_CMD} -e '/cc =/s/gcc/clang/' ${WRKSRC}/config/nim.cfg
.endif

do-build:
	cd ${WRKSRC} && ${SETENV} CC="${CC}" LINKER="${CC}" \
		COMP_FLAGS="${CPPFLAGS} ${CFLAGS}" LINK_FLAGS="${LDFLAGS}" \
		${SH} build.sh
	cd ${WRKSRC} && bin/nim c --parallelBuild=${MAKE_JOBS_NUMBER} koch
	cd ${WRKSRC} && ./koch boot --parallelBuild=${MAKE_JOBS_NUMBER} \
		-d:release

do-install:
	cd ${WRKSRC} && ${SH} install.sh ${STAGEDIR}${PREFIX}

.include <bsd.port.post.mk>
