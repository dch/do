# Created by: Bernhard Froehlich <decke@bluelife.at>
# $FreeBSD: head/www/redmine-basecamp/Makefile 385665 2015-05-07 20:24:15Z mat $

PORTNAME=	basecamp
PORTVERSION=	20130325
CATEGORIES=	www
PKGNAMEPREFIX=	redmine-

MAINTAINER=	decke@FreeBSD.org
COMMENT=	Basecamp Theme for Redmine

RUN_DEPENDS=	redmine>=0.9:${PORTSDIR}/www/redmine

USE_GITHUB=	yes
GH_ACCOUNT=	theill
GH_PROJECT=	redmine-basecamp-theme
GH_TAGNAME=     6812d61

NO_BUILD=	yes

WWWDIR?=	${PREFIX}/www/redmine/public/themes/${PORTNAME}

PLIST_FILES=	%%WWWDIR%%/README.md \
		%%WWWDIR%%/stylesheets/application.css

do-install:
		${MKDIR} ${STAGEDIR}${WWWDIR}
		cd ${WRKSRC} && ${PAX} -r -w . ${STAGEDIR}${WWWDIR}

.include <bsd.port.mk>
