# Created by: kirk@daycos.com
# $FreeBSD: head/databases/pgdbf/Makefile 375020 2014-12-20 17:40:53Z bapt $

PORTNAME=	pgdbf
PORTVERSION=	0.6.2
CATEGORIES=	databases
MASTER_SITES=	SF

MAINTAINER=	kirk@strauser.com
COMMENT=	Convert XBase / FoxPro tables to PostgreSQL

LICENSE=	GPLv3

USES=		gmake tar:xz
GNU_CONFIGURE=	yes

PLIST_FILES=	bin/pgdbf \
		%%DOCSDIR%%/README \
		man/man1/pgdbf.1.gz

.include <bsd.port.pre.mk>

.if ${ARCH} == "ia64" || ${ARCH} == "powerpc" || ${ARCH} == "sparc64"
BROKEN=		Does not compile on ia64, powerpc, or sparc64
.endif

.include <bsd.port.post.mk>
