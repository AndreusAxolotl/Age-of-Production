# Pac-Man: Twisted Edition

A modern reimagining of the classic Pac-Man game with exciting new twists and power-ups!

## Features

### Classic Gameplay
- Navigate through a maze eating pellets
- Avoid ghosts (Blinky, Pinky, Inky, and Clyde)
- Eat power pellets to turn the tables on ghosts
- Progressive difficulty across levels
- Score tracking with high score persistence

### The Twists! 🎮

#### Special Power-Ups
1. **Portal Pellets** 🔵
   - Instantly teleport to a random safe location on the map
   - Great for escaping tight situations!

2. **Freeze Pellets** ❄️
   - Freeze all ghosts in place for 5 seconds
   - Move freely without fear!

3. **Speed Boost** ⚡
   - Increases Pac-Man's movement speed by 80% for 7 seconds
   - Outrun those pesky ghosts!

4. **Rainbow Mode** 🌈
   - Activates for 10 seconds
   - 2x score multiplier for all pellets
   - Colorful visual effects throughout the maze
   - Watch the walls change colors!

5. **Mega Power** 💪
   - Extended power mode lasting 15 seconds
   - Hunt down all the ghosts for massive points!

### Advanced Features
- **Ghost Multiplier**: Eating ghosts in succession increases your score multiplier (200, 400, 800, 1600!)
- **Smart Ghost AI**: Each ghost has unique behavior patterns
  - **Blinky (Red)**: Direct chaser, follows you relentlessly
  - **Pinky (Pink)**: Tries to ambush you by predicting your path
  - **Inky (Cyan)**: Uses complex patterns combining Blinky's position and your direction
  - **Clyde (Orange)**: Chases when far, retreats when near
- **Particle Effects**: Visual feedback for all actions
- **Level Progression**: Increasing difficulty with faster speeds
- **Lives System**: Three lives to prove your skills
- **Persistent High Score**: Your best score is saved locally

## How to Play

### Controls
- **Arrow Keys** or **WASD**: Move Pac-Man in the desired direction
- The game supports direction queueing - press a direction before you can turn and Pac-Man will turn as soon as possible!

### Objective
- Eat all pellets and special items to advance to the next level
- Avoid ghosts unless you've eaten a power pellet
- Collect special power-ups for unique advantages
- Achieve the highest score possible!

### Scoring
- Regular Pellet: 10 points (×multiplier)
- Power Pellet: 50 points (×multiplier)
- Special Pellet: 100 points (×multiplier)
- Ghost (1st): 200 points (×multiplier)
- Ghost (2nd): 400 points (×multiplier)
- Ghost (3rd): 800 points (×multiplier)
- Ghost (4th): 1600 points (×multiplier)

## Technical Details

### Built With
- HTML5 Canvas for rendering
- Vanilla JavaScript (no frameworks!)
- CSS3 for styling and animations
- LocalStorage for high score persistence

### Game Architecture
- **Entity-Component System**: Modular design for Pac-Man and ghosts
- **Tile-based Movement**: Smooth interpolation on a grid-based maze
- **State Machine**: Manages game states (normal, powered, frozen, etc.)
- **Particle System**: Dynamic visual effects
- **Pathfinding AI**: Ghost navigation using distance-based direction selection

## Installation

1. Simply open `index.html` in a modern web browser
2. No installation or build process required!
3. Works offline once loaded

## Browser Compatibility

- Chrome/Edge: ✅ Full support
- Firefox: ✅ Full support
- Safari: ✅ Full support
- Opera: ✅ Full support

## Tips and Strategies

1. **Chain Ghost Captures**: Eat multiple ghosts during a single power mode to maximize the multiplier
2. **Save Special Pellets**: Use portal pellets strategically when cornered
3. **Rainbow + Power Combo**: Activate rainbow mode before eating ghosts for 2x the points!
4. **Corner Clearing**: Clear one section of the maze at a time to avoid getting trapped
5. **Speed Boost Escapes**: Use speed boosts to quickly clear dangerous areas
6. **Freeze for Planning**: Use freeze pellets to set up perfect ghost-eating runs

## Future Enhancements

Potential additions:
- Multiple maze layouts
- Boss battles every 5 levels
- More power-up types
- Leaderboard system
- Mobile touch controls
- Sound effects and music
- Difficulty settings

## Credits

Created as a modern twist on the classic Pac-Man game originally developed by Namco.

This implementation features:
- Original maze layout inspired by the 1980 arcade classic
- Enhanced with modern gameplay mechanics
- Custom particle effects and animations
- Responsive ghost AI with unique personalities

Enjoy the game! 👾🍒
