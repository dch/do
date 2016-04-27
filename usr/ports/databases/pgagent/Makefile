# Created by: Max Khon
# $FreeBSD: head/databases/pgagent/Makefile 386312 2015-05-14 10:15:04Z mat $

PORTNAME=	pgagent
PORTVERSION=	3.4.0
PORTREVISION=	0
CATEGORIES=	databases
MASTER_SITES=	PGSQL/pgadmin3/release/pgagent
DISTNAME=	pgAgent-${PORTVERSION}-Source

MAINTAINER=	fjoe@FreeBSD.org
COMMENT=	Job scheduler for PostgreSQL

USES=		cmake pgsql
CMAKE_ARGS=	-DSTATIC_BUILD:BOOL=NO -DWX_CONFIG_PATH:FILEPATH="${WX_CONFIG}"
USE_WX=		2.8
WX_UNICODE=	yes

PLIST_FILES=	bin/pgagent
PORTDATA=	*

.include <bsd.port.mk>
