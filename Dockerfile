FROM mcr.microsoft.com/playwright:v1.42.1-jammy
WORKDIR /tests
COPY . .
RUN npm install
RUN npx playwright install
CMD ["npm", "test"]