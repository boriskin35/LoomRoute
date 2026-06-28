# Project memory
_Durable project-level knowledge. Persists across all sessions in this project._

## Project context
_INDIVIDUAL: Second Brain (Второй мозг). Личная база знаний: заметки, идеи, файлы, мысли, рефлексия._

- **Роль агента:** Second Brain Curator: Capture → Organize → Distill → Connect → Archive
- **Пользователь:** [Имя пользователя]
- **Текущее состояние:** База знаний инициализирована, папки пустые

## Rules
- **Строгий контроль режимов (Plan/Build/Compose):** Переход ТОЛЬКО по явной команде пользователя.
- **Не писать код без запроса.**
- **Не менять дизайн без обсуждения.**
- **Брать ответственность за слова.**
- **Не заявлять о выполнении без проверки.**

## Architecture decisions
- **Workflow:** Prompt Chaining (Capture → Organize → Distill → Connect → Archive)
- **Структура:** inbox/ (сырьё) → notes/ (обработанное) → archive/ (архив) | projects/ (активные проекты с brief+checks)
- **Статусы заметок:** seedling → growing → evergreen

