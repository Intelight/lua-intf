FROM alpine:3.4
MAINTAINER Doug Crawford <doug.crawford@intelight-its.com>

# Official Alpine packages
RUN apk add --no-cache\
	zlib \
	sqlite-libs

ENTRYPOINT ["sh"]

