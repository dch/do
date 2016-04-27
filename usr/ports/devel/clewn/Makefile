# Created by: Giacomo Mariani <giacomomariani_at_yahoo_dot_it>
# $FreeBSD: head/devel/clewn/Makefile 362452 2014-07-21 17:15:14Z adamw $

PORTNAME=	clewn
PORTVERSION=	1.14
PORTREVISION=	1
CATEGORIES=	devel editors
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}/

MAINTAINER=	giacomomariani@yahoo.it
COMMENT=	Clewn provides Gdb support within Vim

RUN_DEPENDS=	vim:${PORTSDIR}/editors/vim

USES=		gmake readline
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	vimdir=${PREFIX}/share/vim/vimfiles

.include <bsd.port.mk>
