# Created by: Valery Komarov <komarov@valerka.net>
# $FreeBSD: head/devel/node-thrift/Makefile 366258 2014-08-26 19:34:14Z amdmi3 $

PORTNAME=	thrift
PORTVERSION=	${THRIFT_PORTVERSION}
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	# empty
PKGNAMEPREFIX=	node-
DISTFILES=	# empty

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Node.js bindings for the Apache Thrift RPC system

RUN_DEPENDS=	node:${PORTSDIR}/www/node
FETCH_DEPENDS+=	${NONEXISTENT}:${PORTSDIR}/devel/thrift:extract

NO_BUILD=	yes

.include <bsd.port.pre.mk>

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/lib/node_modules/thrift
	${MKDIR} ${STAGEDIR}${PREFIX}/lib/node
	${CP} -R \
	`${MAKE} -C ${PORTSDIR}/devel/thrift -V WRKSRC`/lib/nodejs/* \
		${STAGEDIR}${PREFIX}/lib/node_modules/thrift
	${LN} -s ${PREFIX}/lib/node_modules/thrift/lib/thrift ${STAGEDIR}${PREFIX}/lib/node

.include "${PORTSDIR}/devel/thrift/bsd.thrift.mk"
.include <bsd.port.post.mk>
