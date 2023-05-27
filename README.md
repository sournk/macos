# Мой рецепт настройки MacOs
1. iTerm2
2. brew
3. oh-my-zsh https://niklan.net/blog/149
```
  - Установить плагины plugins=(git sudo)
  - Установить тему ZSH_THEME="agnoster"
  - Установить powerline patched fonts со стрелочками

cd ~/Downloads/
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
```
4. KeyBindings.
	1. Karabiner - мощная программа переназначения клавиш. Использовал для внешней клавиатуры MIIW, чтобы работал Enter на цифровой части аналогично основному.
	2. Чтобы переназначить TouchID PowerButton на delete_forward выполни в терминале команду ниже. Она перебиндит TouchID=0xC00000040 на delete_forward=0x70000004C. ВНИМАНИЕ: Символы использовать нельзя - падает GUI!   
	```
	hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0xC00000040, "HIDKeyboardModifierMappingDst":0x70000004C}]}'
	```
	Подробнее: https://github.com/pqrs-org/Karabiner-Elements/issues/2805#issuecomment-1403223711
	Еще таблица кодов клавиш, хотя их можно в Karabiner-EventViewer посмотреть тоже. Главное добавить префикс 0x7: https://rakhesh.com/mac/using-hidutil-to-map-macos-keyboard-keys/ 
  3. **Для полноразмерной клавиатуры (у меня MIIW)**:
    3.1. Заставить работать Home и End как на PC
      - Зайди в Karabiner-Elements Settings в раздел Complex Modifications.
      - Нажми Add Rule.
      - Нажми Import more rules from Internet.
      - Дальше выбирай варианты модификации для клавиш Home и End. Я выбирал модификацию от Panic Nova.
    3.2. Переназначить Pause на CMD+§, которую использую на встроенной в MacBook клавиатуре как Punto Switcher hotkey: 
      - В файл ``` ~/.config/karabiner/karabiner.json``` добавить следующий блок в список ```rules```:
        ```
        {
          "description": "DK: Remap Pause to CMD+§ (which I use as Punto Switcher hotkey)",
          "manipulators": [
              {
                  "from": {
                      "key_code": "pause",
                      "modifiers": {
                          "optional": [
                              "any"
                          ]
                      }
                  },
                  "to": [
                      {
                          "key_code": "non_us_backslash",
                          "modifiers": "command"
                      }
                  ],
                  "type": "basic"
              }                            
          ]
        },      
        ```
    3.3. Заставить работать Enter доп. цифровой клавиатуры вместо символа =. Для этого в Karabiner в Simple Modifications добавить правило: ```Keypad keys/keypad_equal_sign -> Controls and symbols/return_or_enter```
5. Мышь и трекпад. 
    1. Настройка "Реверсивная прокрутка" связана в MacOs для мыши и трекпада. Нельзя для одного установить реверс, а для другого нет. Чтобы отвязать эти настройки используй **[Scroll Reverser](https://pilotmoon.com/scrollreverser/)**. 
    2. Плавность прокрутки в MacOs в разных программах разная. Например, в Chrome она плавнее, чем в VSCode. Для более точной настройки плавности - **[Mos](https://mos.caldis.me/)**.
    3. **Dropover** - утилита для группового "перетаскивания" объектов.
5. Flycut - менеджер буфера обмена
6. Rectangle - оконный менеджер
7. Shottr замена встроенному скиншоттеру и легковесный аналог крутому SnagIt.
8. BarTender - musthave для настройки MenuBar.
9. Hidden Bar (BarTender заменил ее полностью) - Добавляет разделитель в MenuBar, иконки в MenuBar за которым будут автоматически прятаться.
10. xbar - с помощью плагинов можно выводить что угодно в MenuBar. Мои плагины:
  - 001-weather.15m.py - текущая погода
  - 001-wifiname.sh - Active WiFi Name. Изменил вывод только первых 4-х букв имени сети, чтобы занимать меньше места
  - check_internet.5s.sh - Ping Latancy. Изменить вывод, чтобы занимать меньше места
  - pomodaro.1s.sh
   
  
11. pyenv
```
brew install pyenv
pyenv install 3.10.1
pyenv global 3.10.1
```
12. VSCode


# VSCode

1. flake8
1. REST Client
