# BPE — движок процессов

Модуль метаграфовой платформы для определения, запуска и отслеживания процессов. Репозиторий содержит каркас; состояние API сейчас можно проверить через `GET /health`.

| Зона | Каталог |
| --- | --- |
| Ядро исполнения | `src/ProcessEngine.Core` |
| Версии и хранилище | `src/ProcessEngine.Infrastructure/Metagraph` |
| API и интеграции | `src/ProcessEngine.Api`, `src/ProcessEngine.Application`, `src/ProcessEngine.Infrastructure/Integrations` |
| BPMN-редактор | `web/src/editor` |
| Интерфейс исполнения | `web/src/execution` |
| Демосценарий и тестирование | `demo`, `tests`, `Dockerfile`, `compose.yaml` |

- [Технические контракты](docs/contracts.md)
- [Локальный запуск и сборка](docs/developer-guide.md)
- [Сценарий согласования заявки](demo/README.md)
