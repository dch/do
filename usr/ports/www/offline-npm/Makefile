# Created by: Carlos J Puga Medina <cpm@fbsd.es>
# $FreeBSD: head/www/offline-npm/Makefile 394557 2015-08-18 05:21:28Z pi $

PORTNAME=	offline-npm
PORTVERSION=	0.2.0
DISTVERSIONPREFIX=	v
CATEGORIES=	www

MAINTAINER=	cpm@fbsd.es
COMMENT=	Offline installation with npm install

LICENSE=	MIT

BUILD_DEPENDS=	npm>0:${PORTSDIR}/www/npm
RUN_DEPENDS=	npm>0:${PORTSDIR}/www/npm

USE_GITHUB=	yes
GH_ACCOUNT=	commenthol
GH_PROJECT=	offline-npm

NO_BUILD=	yes

do-install:
	(cd ${STAGEDIR}${PREFIX}/lib && ${SETENV} \
		HOME=${WRKDIR} npm install ${WRKSRC})

	# this is a dirty hack
	${LN} -s ${PREFIX}/lib/node_modules/.bin/offline-npm ${STAGEDIR}${PREFIX}/bin/offline-npm

.include <bsd.port.mk>
