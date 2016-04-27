# $FreeBSD: head/devel/elixir-timex/Makefile 394606 2015-08-18 15:39:51Z olgeni $

PORTNAME=	timex
PORTVERSION=	0.19.2
CATEGORIES=	devel
PKGNAMEPREFIX=	elixir-

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	Complete date/time library for Elixir

LICENSE=	MIT

USES=		elixir
USE_GITHUB=	yes
GH_ACCOUNT=	bitwalker

MIX_BUILD_DEPS= devel/elixir-combine \
		devel/elixir-tzdata
MIX_RUN_DEPS:=	${MIX_BUILD_DEPS}

.include <bsd.port.mk>
