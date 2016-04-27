# Created by: Palle Girgensohn <girgen@FreeBSD.org>
# $FreeBSD: head/databases/postgresql93-client/Makefile 387089 2015-05-22 23:22:19Z girgen $

PORTNAME=	postgresql
COMMENT=	PostgreSQL database (client)
PORTREVISION=	0

MASTERDIR=	${.CURDIR}/../postgresql93-server

BUILD_DIRS=	config src/include src/interfaces src/port \
		src/bin/pg_dump src/bin/psql src/bin/scripts src/bin/pg_config \
		doc src/makefiles
INSTALL_DIRS=	${BUILD_DIRS}

CLIENT_ONLY=	yes
COMPONENT=	-client
USE_LDCONFIG=	yes
USES+=		pkgconfig

.include "${MASTERDIR}/Makefile"
