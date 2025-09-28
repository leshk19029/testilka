local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Snow Hub",
    Theme = "Dark",
    Folder = "SnowHub",
    Size = UDim2.new(0, 600, 0, 400),
    ToggleKey = Enum.KeyCode.RightShift
})

local MainTab = Window:Tab({
    Title = "Главная",
    Icon = "home"
})

local CombatTab = Window:Tab({
    Title = "Бой",
    Icon = "sword"
})

local VisualsTab = Window:Tab({
    Title = "Визуалы",
    Icon = "eye"
})

local SettingsTab = Window:Tab({
    Title = "Настройки",
    Icon = "settings"
})

-- Главная вкладка
MainTab:Button({
    Title = "Загрузить скрипт",
    Callback = function()
        WindUI:Notify({
            Title = "Snow Hub",
            Content = "Скрипт загружен!",
            Duration = 3
        })
    end
})

MainTab:Toggle({
    Title = "Включить функции",
    Value = false,
    Callback = function(Value)
        print("Функции:", Value)
    end
})

MainTab:Slider({
    Title = "Скорость",
    Value = {Default = 50, Min = 0, Max = 100},
    Callback = function(Value)
        print("Скорость:", Value)
    end
})

-- Бой вкладка
CombatTab:Toggle({
    Title = "Аимбот",
    Value = false,
    Callback = function(Value)
        print("Аимбот:", Value)
    end
})

CombatTab:Toggle({
    Title = "Триггербот",
    Value = false,
    Callback = function(Value)
        print("Триггербот:", Value)
    end
})

CombatTab:Keybind({
    Title = "Бинд аимбота",
    Value = "Q",
    Callback = function(Key)
        print("Бинд аимбота:", Key)
    end
})

-- Визуалы вкладка
VisualsTab:Toggle({
    Title = "ESP игроков",
    Value = false,
    Callback = function(Value)
        print("ESP:", Value)
    end
})

VisualsTab:Toggle({
    Title = "Трассировка пуль",
    Value = false,
    Callback = function(Value)
        print("Трассировка:", Value)
    end
})

VisualsTab:Colorpicker({
    Title = "Цвет ESP",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(Color)
        print("Цвет ESP:", Color)
    end
})

-- Настройки вкладка
SettingsTab:Dropdown({
    Title = "Тема",
    Values = {"Dark", "Light", "Red", "Blue"},
    Value = "Dark",
    Callback = function(Value)
        WindUI:SetTheme(Value)
    end
})

SettingsTab:Button({
    Title = "Сохранить настройки",
    Callback = function()
        WindUI:Notify({
            Title = "Snow Hub",
            Content = "Настройки сохранены!",
            Duration = 2
        })
    end
})

SettingsTab:Paragraph({
    Title = "Информация",
    Content = "Snow Hub v1.0\nСоздано для Roblox"
})
