# Базовый образ — Node.js 20.12.2
FROM node:20.12.2

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем package.json и package-lock.json (если есть) из подкаталога app
COPY app/package*.json ./

# Устанавливаем зависимости
RUN npm ci

# Копируем остальные файлы из папки app в корень /app
COPY app/. .