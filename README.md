# dom-testing-library-example

Пример тестов на [Testing Library](https://testing-library.com/) для курса
[JS: DOM Testing Library](https://ru.hexlet.io/courses/js-dom-testing-library).

## Зачем это нужно

Testing Library проверяет интерфейс так, как его видит пользователь: элементы
ищутся по подписи, роли и тексту, а не по классам и идентификаторам разметки.
Из-за этого тест переживает переделку вёрстки и ломается только тогда, когда
ломается само поведение.

Здесь это показано на одном законченном сценарии. Тест берёт готовую игру
[@hexlet/tic-tac-toe](https://github.com/hexlet-components/tic-tac-toe-js),
заполняет имена игроков, кликает по клеткам и проверяет, что ход переходит от
одного игрока к другому и что игра объявляет победителя. Ни одного селектора
по классу в нём нет.

## Запуск

```bash
make install
make test
```

## Что смотреть в коде

Весь пример это `__tests__/example.spec.js`. Основное в нём:

- `screen.getByLabelText('Player 1')` находит поле по его подписи, то есть так
  же, как его находит человек;
- `userEvent` печатает и кликает как настоящий пользователь, а не дёргает
  обработчики напрямую;
- `toHaveTextContent` проверяет, что на экране появился ожидаемый текст.

Тесты идут в jsdom, браузер не нужен. Посмотреть промежуточное состояние DOM
глазами помогает `pnpm run vitest-preview`.

---

[![Hexlet Ltd. logo](https://raw.githubusercontent.com/Hexlet/assets/master/images/hexlet_logo128.png)](https://hexlet.io/?utm_source=github&utm_medium=link&utm_campaign=dom-testing-library-example)

This repository is created and maintained by the team and the community of Hexlet, an educational project. [Read more about Hexlet](https://hexlet.io/?utm_source=github&utm_medium=link&utm_campaign=dom-testing-library-example).

See most active contributors on [hexlet-friends](https://friends.hexlet.io/).
