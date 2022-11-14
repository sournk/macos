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
4. Flycut - менеджер буфера обмена
5. Rectangle - оконный менеджер
6. Shottr замена встроенному скиншоттеру и легковесный аналог крутому SnagIt.
6. BarTender - musthave для настройки MenuBar.
6. Hidden Bar (BarTender заменил ее полностью) - Добавляет разделитель в MenuBar, исконки в MenuBar за которым будут автоматически прятаться.
6. xbar - с помощью плагинов можно выводить что угодно в MenuBar. Мои плагины:
  - 001-weather.15m.py - текущая года
  - Active WiFi Name
7. pyenv
```
brew install pyenv
pyenv install 3.10.1
pyenv global 3.10.1
```
8. VSCode


# VSCode
