# $FreeBSD: head/devel/elixir-calendar/Makefile 395310 2015-08-25 19:35:47Z olgeni $

PORTNAME=	calendar
PORTVERSION=	0.10.0
DISTVERSIONPREFIX=	v
CATEGORIES=	devel
PKGNAMEPREFIX=	elixir-

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	Date-time and time zone handling in Elixir

LICENSE=	MIT

USES=		elixir
USE_GITHUB=	yes
GH_ACCOUNT=	lau

MIX_BUILD_DEPS=	devel/elixir-tzdata
MIX_RUN_DEPS:=	${MIX_BUILD_DEPS}

.include <bsd.port.mk>
