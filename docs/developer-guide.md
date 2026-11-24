# Руководство разработчика

## Запуск на машине

Понадобятся SDK .NET 10 и Node.js 22.12+ (или совместимая более новая LTS).

Из корня репозитория:

```sh
dotnet build ProcessEngine.slnx
dotnet run --project src/ProcessEngine.Api --urls http://localhost:8080
```

Проверка API — `http://localhost:8080/health`.

В отдельном терминале:

```sh
cd web
npm ci
npm run dev
```

Веб-каркас открывается по адресу `http://localhost:5173`. Путь `/health` проксируется в API. Переменная `API_PROXY_TARGET` позволяет задать другой адрес API для Vite.

## Запуск через Docker Compose

```sh
docker compose up --build
```

Compose запускает API и веб-каркас на тех же портах. Подключение метаграфового хранилища и тестового сервиса запланировано в задачах соответствующих участников.

## Проверки

```sh
dotnet build ProcessEngine.slnx
cd web
npm ci
npm run build
```

Каталоги `tests/` зарезервированы под тестовые проекты и сквозные тесты. Когда команда добавит .NET-тесты, проекты следует включить в `ProcessEngine.slnx`.
