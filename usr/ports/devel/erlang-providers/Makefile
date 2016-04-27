# $FreeBSD: head/devel/erlang-providers/Makefile 391483 2015-07-06 22:27:17Z olgeni $

PORTNAME=	providers
PORTVERSION=	1.4.1
CATEGORIES=	devel
PKGNAMEPREFIX=	erlang-

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	Erlang providers library used by relx

LICENSE=	LGPL3

USES=		erlang:rebar
USE_GITHUB=	yes
GH_ACCOUNT=	tsloughter

ERL_BUILD_DEPS=	devel/erlang-getopt
ERL_RUN_DEPS:=	${ERL_BUILD_DEPS}

.include <bsd.port.mk>
