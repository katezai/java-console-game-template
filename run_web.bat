@echo off
echo 🏰 DUNGEON MINI - Запуск веб-версии игры
echo ========================================
echo.

:: Проверяем наличие Python
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo 🐍 Найден Python, запускаем сервер...
    python server.py
) else (
    echo ❌ Python не найден в системе
    echo 📝 Альтернативный запуск:
    echo    1. Откройте файл index.html в браузере
    echo    2. Или установите Python для запуска локального сервера
    echo.
    echo 💡 Для установки Python:
    echo    Скачайте с https://python.org
    echo.
    echo 🎮 А пока открываем игру в браузере...
    
    :: Пытаемся открыть в браузере по умолчанию
    start index.html
)

pause
