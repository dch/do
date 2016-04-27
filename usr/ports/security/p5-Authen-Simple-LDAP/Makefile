# Created by: Aaron Dalton <aaron@FreeBSD.org>
# $FreeBSD: head/security/p5-Authen-Simple-LDAP/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Authen-Simple-LDAP
PORTVERSION=	0.3
PORTREVISION=	1
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Simple LDAP authentication

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Authen-Simple>=0:${PORTSDIR}/security/p5-Authen-Simple \
		p5-perl-ldap>=0:${PORTSDIR}/net/p5-perl-ldap
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5=	configure
USES=		perl5

.include <bsd.port.mk>
