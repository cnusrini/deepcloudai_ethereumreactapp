FROM node:carbon

# Set the working directory to /app
WORKDIR /home/hyperledger/dapp/react-box/client



# Copy the current directory contents into the container at /app
# COPY package*.json ./

# Install any needed packages
RUN npm install

#Bundle image
COPY . .

# Make port 80 available to the world outside this container
EXPOSE 3004

# Run npm when the container launches
CMD ["npm run", "start"]
