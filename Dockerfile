FROM n8nio/n8n:1.116.2

USER root

RUN npm install --prefix /tmp @n8n/n8n-nodes-langchain && \
    cp -r /tmp/node_modules/@n8n /usr/local/lib/node_modules/ && \
    rm -rf /tmp/node_modules

USER node

ENV NODE_PATH=/usr/local/lib/node_modules
