FROM node:18-alpine

# نصب newman
RUN npm install -g newman

# کپی تست‌ها
WORKDIR /app
COPY ./tests ./tests

# دستور پیش‌فرض برای اجرا
CMD ["newman", "run", "tests/collection.json", "-e", "tests/env.json"]
