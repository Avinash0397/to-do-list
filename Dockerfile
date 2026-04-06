FROM node:18

WORKDIR /app

# ✅ Copy package files first (best practice)
COPY package*.json ./

# ✅ Install dependencies
RUN npm install

# ✅ Copy remaining app files
COPY . .

# Start app
CMD ["npm", "start"]  
