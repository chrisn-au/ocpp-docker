FROM nodered/node-red

# Create app directory

COPY flows.json .
RUN npm install node-red-contrib-ocpp
RUN npm install reconnecting-websocket
COPY ocpp-cp-json.js node_modules/node-red-contrib-ocpp/ocpp

CMD [ "npm", "start"  ]