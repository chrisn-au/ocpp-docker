FROM nodered/node-red

# Create app directory

#COPY flows.json .
#RUN npm install node-red-contrib-ocpp
#RUN npm install reconnecting-websocket

COPY package.json .
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production
# patch the occp-cp-json.js file
COPY ocpp-cp-json.js node_modules/node-red-contrib-ocpp/ocpp

COPY --chown=node-red:node-red node_modules/node-red/settings.js /data/settings.js
COPY --chown=node-red:node-red flows.json /data/flows.json

# CMD ["npm" , "start" ]
