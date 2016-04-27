# Created by: Joe Horn <joehorn@gmail.com>
# $FreeBSD: head/databases/tuning-primer/Makefile 377468 2015-01-19 20:26:20Z bapt $

PORTNAME=	tuning-primer
PORTVERSION=	1.6.r1
CATEGORIES=	databases
MASTER_SITES=	http://launchpad.net/mysql-${PORTNAME}/trunk/1.6-r1/+download/
DISTNAME=	${PORTNAME}.sh
EXTRACT_SUFX=
EXTRACT_ONLY=
DIST_SUBDIR=	${PORTNAME}/${DISTVERSION}

MAINTAINER=	joehorn@gmail.com
COMMENT=	MySQL performance tuning primer script

LICENSE=	GPLv2

NO_BUILD=	yes
USE_MYSQL=	yes

PLIST_FILES=	bin/${PORTNAME}

do-install:
	${INSTALL_SCRIPT} ${DISTDIR}/${DIST_SUBDIR}/${PORTNAME}.sh \
		${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
