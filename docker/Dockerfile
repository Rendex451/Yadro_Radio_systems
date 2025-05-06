FROM python:3-alpine

RUN apk update && apk add --no-cache wget

COPY extract_path_value.py config.txt /tmp/
COPY --chmod=0100 search_path.sh /tmp/