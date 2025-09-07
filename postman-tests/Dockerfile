# استفاده از ایمیج پایه Node.js
FROM node:18-alpine

# نصب Newman
RUN npm install -g newman

# کپی فایل‌های تست پستمن
COPY tests.json /app/tests.json
COPY env.json /app/env.json  # اگه فایل محیط نداری، این خط رو حذف کن

# تنظیم دایرکتوری کاری
WORKDIR /app

# دستور اجرای تست‌ها
CMD ["newman", "run", "andarz.json", "-e", "andarz_env.json"]  # اگه env.json نداری، "-e env.json" رو حذف کن