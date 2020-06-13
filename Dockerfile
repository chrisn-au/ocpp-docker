FROM nodered/node-red

# Create app directory

COPY flows.json .
RUN npm install node-red-contrib-ocpp

CMD [ "npm", "start"  ]