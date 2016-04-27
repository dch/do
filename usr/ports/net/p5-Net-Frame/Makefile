# Created by: Cheng-Lung Sung <clsung@FreeBSD.org>
# $FreeBSD: head/net/p5-Net-Frame/Makefile 379084 2015-02-16 09:42:03Z culot $

PORTNAME=	Net-Frame
PORTVERSION=	1.15
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Base framework for frame crafting

LICENSE=	ART10

BUILD_DEPENDS=	p5-Bit-Vector>=0:${PORTSDIR}/math/p5-Bit-Vector \
    		p5-Class-Gomor>=1.00:${PORTSDIR}/devel/p5-Class-Gomor \
		p5-Net-IPv6Addr>=0:${PORTSDIR}/net-mgmt/p5-Net-IPv6Addr \
		p5-Socket6>=0:${PORTSDIR}/net/p5-Socket6
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
