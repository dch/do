# $FreeBSD: head/devel/erlang-clique/Makefile 395318 2015-08-25 22:24:02Z olgeni $

PORTNAME=	clique
PORTVERSION=	0.3.3
CATEGORIES=	devel
PKGNAMEPREFIX=	erlang-

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	CLI Framework for Erlang

LICENSE=	APACHE20

USES=		erlang:rebar
USE_GITHUB=	yes
GH_ACCOUNT=	basho

ERL_BUILD_DEPS=	devel/erlang-cuttlefish
ERL_RUN_DEPS:=	${ERL_BUILD_DEPS}

.include <bsd.port.mk>
