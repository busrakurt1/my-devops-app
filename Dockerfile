# Dockerfile

FROM node:22-alpine

# Çalışma dizinini belirle
WORKDIR C:\Users\USER\Downloads\my-devops-app

# package.json ve package-lock.json (varsa) dosyalarını kopyala
COPY package*.json ./

# Gerekli bağımlılıkları kur
RUN npm install

# Geriye kalan uygulama dosyalarını kopyala
COPY . .

# Uygulamayı başlatma komutunu tanımla
CMD [ "node", "server.js" ]

# Uygulamanın dinleyeceği portu belirle
EXPOSE 3000
