# Created by: Jin-Shan Tseng <tjs@cdpa.nsysu.edu.tw>
# $FreeBSD: head/net/p5-Net-SSH2/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Net-SSH2
PORTVERSION=	0.53
PORTREVISION=	1
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	jadawin@FreeBSD.org
COMMENT=	Support for the SSH 2 protocol via libSSH2

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

LIB_DEPENDS=	libssh2.so:${PORTSDIR}/security/libssh2

USES=	perl5
USE_PERL5=	configure

.include <bsd.port.mk>
