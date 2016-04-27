# $FreeBSD: head/devel/pkg-info.el/Makefile 385521 2015-05-06 15:16:53Z mat $

PORTNAME=	pkg-info.el
PORTVERSION=	0.5
PORTREVISION=	2
CATEGORIES=	devel elisp
DISTNAME=	pkg-info-${PORTVERSION}

MAINTAINER=	rpaulo@FreeBSD.org
COMMENT=	Provide information about Emacs packages

LICENSE=	GPLv3

USE_GITHUB=	yes
GH_ACCOUNT=	lunaryorn

USE_EMACS=	yes

NO_BUILD=	yes


do-install:
	${INSTALL_DATA} ${WRKSRC}/pkg-info.el \
		${STAGEDIR}${PREFIX}/${EMACS_SITE_LISPDIR}

.include <bsd.port.mk>
