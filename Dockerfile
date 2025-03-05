# Вказуємо базовий образ з Python 3.10
FROM python:3.10

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо файли проєкту
COPY . .

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Відкриваємо порт для FastAPI
EXPOSE 8000

# Запускаємо застосунок
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
