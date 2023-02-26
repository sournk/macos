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
5. Flycut - менеджер буфера обмена
6. Rectangle - оконный менеджер
7. Shottr замена встроенному скиншоттеру и легковесный аналог крутому SnagIt.
8. BarTender - musthave для настройки MenuBar.
9. Hidden Bar (BarTender заменил ее полностью) - Добавляет разделитель в MenuBar, исконки в MenuBar за которым будут автоматически прятаться.
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
