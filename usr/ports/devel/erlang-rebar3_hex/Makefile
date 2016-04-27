# $FreeBSD: head/devel/erlang-rebar3_hex/Makefile 391483 2015-07-06 22:27:17Z olgeni $

PORTNAME=	rebar3_hex
PORTVERSION=	0.1.0
DISTVERSIONPREFIX=	v
CATEGORIES=	devel
PKGNAMEPREFIX=	erlang-

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	Rebar3 Hex library

LICENSE=	BSD3CLAUSE

USES=		erlang:rebar
USE_GITHUB=	yes
GH_ACCOUNT=	hexpm

ERL_BUILD_DEPS=	devel/erlang-erlware_commons \
		devel/erlang-jsx \
		devel/erlang-providers \
		devel/erlang-ssl_verify_hostname
ERL_RUN_DEPS:=	${ERL_BUILD_DEPS}

.include <bsd.port.mk>
