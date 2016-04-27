# Created by: Akinori MUSHA aka knu <knu@idaemons.org>
# $FreeBSD: head/devel/ruby-dialogs/Makefile 362014 2014-07-15 23:11:12Z adamw $

PORTNAME=	dialogs
PORTVERSION=	1.1
CATEGORIES=	devel ruby
MASTER_SITES=	LOCAL/fenner/ruby-contrib
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DIST_SUBDIR=	ruby

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Simple Ruby interface to dialog(1)

USE_RUBY=	yes
RUBY_NO_BUILD_DEPENDS=	yes

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

OPTIONS_DEFINE=	DOCS

do-install:
	${MKDIR} ${STAGEDIR}${RUBY_SITELIBDIR}
	${INSTALL_DATA} ${WRKDIR}/dialogs.rb ${STAGEDIR}${RUBY_SITELIBDIR}/
	${MKDIR} ${STAGEDIR}${RUBY_MODDOCDIR}
	${INSTALL_DATA} ${WRKDIR}/dialogs.html ${STAGEDIR}${RUBY_MODDOCDIR}/


.include <bsd.port.mk>
