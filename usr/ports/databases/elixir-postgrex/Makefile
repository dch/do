# $FreeBSD: head/databases/elixir-postgrex/Makefile 392090 2015-07-14 20:37:44Z olgeni $

PORTNAME=	postgrex
PORTVERSION=	0.9.1
DISTVERSIONPREFIX=	v
CATEGORIES=	databases
PKGNAMEPREFIX=	elixir-

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	Database driver for PostgreSQL written in Elixir

LICENSE=	APACHE20

USES=		elixir
USE_GITHUB=	yes
GH_ACCOUNT=	ericmj

MIX_BUILD_NAME=	shared
MIX_BUILD_DEPS=	devel/elixir-decimal
MIX_RUN_DEPS:=	${MIX_BUILD_DEPS}

.include <bsd.port.mk>
