# Created by: Sergey Kozlov <kozlov.sergey.404@gmail.com>
# $FreeBSD: head/textproc/kibana4/Makefile 393628 2015-08-06 01:22:34Z junovitch $

PORTNAME=	kibana
PORTVERSION=	4.1.1
DISTVERSIONSUFFIX=	-linux-x86
CATEGORIES=	textproc www
MASTER_SITES=	http://download.elastic.co/kibana/kibana/
PKGNAMESUFFIX=	4

MAINTAINER=	kozlov.sergey.404@gmail.com
COMMENT=	Browser based analytics and search interface to ElasticSearch

LICENSE=	APACHE20

RUN_DEPENDS=	node010>=0:${PORTSDIR}/www/node010

NO_BUILD=	yes
NO_ARCH=	yes
WWWDIR=	${PREFIX}/www/${PORTNAME}${PKGNAMESUFFIX}
USE_RC_SUBR=	${PORTNAME}

do-install:
	@${MKDIR} ${STAGEDIR}${WWWDIR}
	@cd ${WRKSRC}/src && \
		${RM} config/kibana.yml bin/kibana.sh bin/kibana.bat && \
		${COPYTREE_SHARE} . ${STAGEDIR}${WWWDIR}
	@${CP} ${WRKSRC}/config/kibana.yml ${STAGEDIR}${PREFIX}/etc/kibana.yml.sample

.include <bsd.port.mk>
