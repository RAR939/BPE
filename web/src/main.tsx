import { createRoot } from 'react-dom/client'

const root = document.getElementById('root')

if (!root) {
  throw new Error('Не найден контейнер приложения.')
}

createRoot(root).render(
  <main>
    <h1>Движок процессов</h1>
    <a href="/health">Проверить доступность API</a>
  </main>,
)
