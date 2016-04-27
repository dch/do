# Created by: Joseph Benden <joe@thrallingpenguin.com>
# $FreeBSD: head/www/rubygem-savon/Makefile 354972 2014-05-24 02:13:28Z swills $

PORTNAME=	savon
PORTVERSION=	0.9.5
CATEGORIES=	www rubygems
MASTER_SITES=	RG

MAINTAINER=	joe@thrallingpenguin.com
COMMENT=	Library for SOAP communications

LICENSE=	BSD2CLAUSE

RUN_DEPENDS=	rubygem-builder>=2.1.2:${PORTSDIR}/devel/rubygem-builder \
		rubygem-nori>=1.0.3:${PORTSDIR}/devel/rubygem-nori \
		rubygem-httpi>=0.9.0:${PORTSDIR}/www/rubygem-httpi \
		rubygem-wasabi>=1.0.0:${PORTSDIR}/www/rubygem-wasabi \
		rubygem-akami>=1.0.0:${PORTSDIR}/www/rubygem-akami \
		rubygem-gyoku>=0.4.6:${PORTSDIR}/devel/rubygem-gyoku \
		rubygem-nokogiri>=1.6.1:${PORTSDIR}/textproc/rubygem-nokogiri

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
