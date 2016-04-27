# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: head/databases/rubygem-pg/Makefile 388132 2015-05-31 19:25:46Z sunpoet $

PORTNAME=	pg
PORTVERSION=	0.18.2
CATEGORIES=	databases rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby interface to PostgreSQL library

LICENSE=	BSD2CLAUSE RUBY
LICENSE_COMB=	dual

CONFIGURE_ARGS=	--with-pgsql-include-dir=`${PG_CONFIG} --includedir` \
		--with-pgsql-lib-dir=`${PG_CONFIG} --libdir`
PG_CONFIG=	${LOCALBASE}/bin/pg_config
USES=		pgsql
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
