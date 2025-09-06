FROM node:20

# نصب Newman و reporter HTML
RUN npm install -g newman newman-reporter-htmlextra

# دایرکتوری کاری
WORKDIR /etc/newman

# CMD پیشفرض (می‌توان override کرد)
CMD ["newman", "--help"]
