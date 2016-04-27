# Created by: Thierry Thomas (<thierry@pompo.net>)
# $FreeBSD: head/devel/pear-HTML_Select_Common/Makefile 372709 2014-11-18 09:37:31Z bapt $

PORTNAME=	HTML_Select_Common
PORTVERSION=	1.2.0
CATEGORIES=	devel www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Some small PEAR classes to handle common <select> lists

BUILD_DEPENDS=	${PEARDIR}/HTML/Common.php:${PORTSDIR}/devel/pear-HTML_Common	\
		${PEARDIR}/I18N/Common.php:${PORTSDIR}/devel/pear-I18N
RUN_DEPENDS=	${PEARDIR}/HTML/Common.php:${PORTSDIR}/devel/pear-HTML_Common	\
		${PEARDIR}/I18N/Common.php:${PORTSDIR}/devel/pear-I18N

USES=	pear

.include <bsd.port.mk>
