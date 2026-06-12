# 2d platformer template for Godot 4

This project was originally made by [GDQuest](https://github.com/gdquest-demos/godot-3-beginner-2d-platformer)  

I've taken some liberties to make the project even simpler to understand and start working with.  

## Usage

1. Download or clone the repo
2. Open the project.godot file in Godot 4
	- Either drag and drop the file into Godot or use the GUI
3. Start developing!

## Project structure

```bash
game
├── assets (all textures, sound, etc.)
├── icon.png 
├── project.godot (game config for Godot)
└── src (Scripts and scenes)
    ├── Actors
    │   ├── Player
    │   └── Enemy
    ├── Autoload (Global scripts)
    │   ├── Audio
    │   └── PlayerData
    ├── Levels
    │   ├── Levels
    │   └── Level template
    ├── Objects
    │   ├── Coin
    │   ├── Level end portal
    ├── Screens
    │   ├── EndScreen
    │   └── MainScreen
    └── UserInterface
        ├── QuitButton
        ├── RetryButton
        ├── SceneChangeButton
        └── UserInterface
```
