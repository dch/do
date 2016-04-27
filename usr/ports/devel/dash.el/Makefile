# $FreeBSD: head/devel/dash.el/Makefile 393261 2015-07-30 19:40:41Z rpaulo $

PORTNAME=	dash.el
PORTVERSION=	2.11.0
CATEGORIES=	devel elisp
DISTNAME=	dash-${PORTVERSION}

MAINTAINER=	rpaulo@FreeBSD.org
COMMENT=	Modern list library for Emacs

LICENSE=	GPLv3

USE_GITHUB=	yes
GH_ACCOUNT=	magnars

USE_EMACS=	yes

NO_BUILD=	yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/dash.el \
		${STAGEDIR}${PREFIX}/${EMACS_SITE_LISPDIR}
	${INSTALL_DATA} ${WRKSRC}/dash-functional.el \
		${STAGEDIR}${PREFIX}/${EMACS_SITE_LISPDIR}

.include <bsd.port.mk>
