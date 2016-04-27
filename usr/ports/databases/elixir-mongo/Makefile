# $FreeBSD: head/databases/elixir-mongo/Makefile 391562 2015-07-08 11:36:52Z vanilla $

PORTNAME=	elixir-mongo
PORTVERSION=	0.5.1
CATEGORIES=	databases

MAINTAINER=	vanilla@FreeBSD.org
COMMENT=	Database driver for MongoDB written in Elixir

LICENSE=	MIT

USES=		elixir
USE_GITHUB=	yes
GH_ACCOUNT=	checkiz

ELIXIR_APP_NAME=mongo

MIX_BUILD_DEPS=	devel/elixir-bson
MIX_RUN_DEPS:=	${MIX_BUILD_DEPS}

.include <bsd.port.mk>
