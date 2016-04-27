# $FreeBSD: head/devel/elixir-exrm/Makefile 394605 2015-08-18 15:26:19Z olgeni $

PORTNAME=	exrm
PORTVERSION=	0.19.2
CATEGORIES=	devel
PKGNAMEPREFIX=	elixir-

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	Automatically generate releases for Elixir projects

LICENSE=	MIT

USES=		elixir
USE_GITHUB=	yes
GH_ACCOUNT=	bitwalker

MIX_BUILD_DEPS=	devel/relx \
		devel/elixir-conform
MIX_RUN_DEPS:=	${MIX_BUILD_DEPS}

.include <bsd.port.mk>
