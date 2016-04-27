# Created by: Akinori MUSHA aka knu <knu@idaemons.org>
# $FreeBSD: head/databases/ruby-gdbm/Makefile 350471 2014-04-07 13:19:11Z bapt $

PORTNAME=	gdbm
PORTVERSION=	${RUBY_PORTVERSION}
PORTREVISION=	3
PORTEPOCH=	1
CATEGORIES=	databases ruby
MASTER_SITES=	# none
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DISTFILES=	# none

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby extension to GDBM library

FETCH_DEPENDS=	${NONEXISTENT}:${PORTSDIR}/${RUBY_PORT}:patch
LIB_DEPENDS=	libgdbm.so:${PORTSDIR}/databases/gdbm

PLIST_FILES=	%%RUBY_ARCHLIBDIR%%/gdbm.so
USE_RUBY=	yes
USE_RUBY_EXTCONF=	yes
WRKSRC=		${WRKDIR}/${PORTNAME}

MAKE_ARGS=	sitelibdir='$$(rubylibdir)' \
		INSTALL_PROG="${INSTALL_PROGRAM}" \
		INSTALL_DATA="${INSTALL_DATA}"


do-extract:
	${MKDIR} ${WRKDIR}
	${LN} -sf `cd ${PORTSDIR}/${RUBY_PORT}; ${MAKE} -V WRKDIR`/${PORTNAME} ${WRKDIR}/

.include <bsd.port.mk>
