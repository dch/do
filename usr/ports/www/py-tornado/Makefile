# Created by: Guixing Bai <khsing.cn@gmail.com>
# $FreeBSD: head/www/py-tornado/Makefile 390441 2015-06-23 18:22:43Z rm $

PORTNAME=	tornado
PORTVERSION=	4.2
PORTREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	khsing.cn@gmail.com
COMMENT=	Python Web Server from FriendFeed

LICENSE=	APACHE20

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}certifi>0:${PORTSDIR}/security/py-certifi

USES=		python
USE_PYTHON=	autoplist distutils

.include <bsd.port.pre.mk>

.if ${PYTHON_REL} < 3000
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}futures>0:${PORTSDIR}/devel/py-futures
.endif

post-build:
	@${FIND} ${WRKSRC}/build -name speedups.so -exec ${STRIP_CMD} {} \;

regression-test: build
	@cd ${WRKSRC} && ${PYTHON_CMD} -m tornado.test.runtests

.include <bsd.port.post.mk>
