# Created by: Veniamin Gvozdikov <vg@FreeBSD.org>
# $FreeBSD: head/benchmarks/nosqlbench/Makefile 395162 2015-08-24 08:55:07Z vg $

PORTNAME=	nosqlbench
PORTVERSION=	0.0.${DATE}
CATEGORIES=	benchmarks databases
MASTER_SITES=	LOCAL/vg

MAINTAINER=	vg@FreeBSD.org
COMMENT=	Micro-benchmarking NoSQL storage

LICENSE=	BSD2CLAUSE

LIB_DEPENDS=	libleveldb.so:${PORTSDIR}/databases/leveldb

DATE=		20150822
USES=		cmake tar:bzip2

PLIST_FILES=	bin/nb \
		etc/nosqlbench.conf.sample

post-install:
	${INSTALL_DATA} ${WRKSRC}/sources/nosqlbench.conf \
		${STAGEDIR}${PREFIX}/etc/nosqlbench.conf.sample

.include <bsd.port.mk>
