# Gunakan base image Node.js
FROM node:18.17.1

# Set working directory
WORKDIR /app

# Salin file package.json dan package-lock.json (jika ada)
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin seluruh kode aplikasi
COPY . .

# Set environment variables
ENV PORT=3000
ENV MODEL_URL=https://storage.googleapis.com/submissionmlgc-bucket-model/model-in-prod/model.json

# Ekspos port aplikasi
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "start"]
