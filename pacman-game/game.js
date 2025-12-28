// Game Constants
const TILE_SIZE = 24;
const COLS = 28;
const ROWS = 31;

// Game Canvas
const canvas = document.getElementById('gameCanvas');
const ctx = canvas.getContext('2d');

// Direction constants
const DIRECTIONS = {
    UP: { x: 0, y: -1 },
    DOWN: { x: 0, y: 1 },
    LEFT: { x: -1, y: 0 },
    RIGHT: { x: 1, y: 0 }
};

// Maze layout (0 = wall, 1 = pellet, 2 = power pellet, 3 = empty, 4 = ghost house)
const mazeLayout = [
    [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
    [0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0],
    [0,1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,1,0],
    [0,2,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,2,0],
    [0,1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,1,0],
    [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
    [0,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0],
    [0,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0],
    [0,1,1,1,1,1,1,0,0,1,1,1,1,0,0,1,1,1,1,0,0,1,1,1,1,1,1,0],
    [0,0,0,0,0,0,1,0,0,0,0,0,3,0,0,3,0,0,0,0,0,1,0,0,0,0,0,0],
    [0,0,0,0,0,0,1,0,0,0,0,0,3,0,0,3,0,0,0,0,0,1,0,0,0,0,0,0],
    [0,0,0,0,0,0,1,0,0,3,3,3,3,3,3,3,3,3,3,0,0,1,0,0,0,0,0,0],
    [0,0,0,0,0,0,1,0,0,3,0,0,0,4,4,0,0,0,3,0,0,1,0,0,0,0,0,0],
    [0,0,0,0,0,0,1,0,0,3,0,4,4,4,4,4,4,0,3,0,0,1,0,0,0,0,0,0],
    [3,3,3,3,3,3,1,3,3,3,0,4,4,4,4,4,4,0,3,3,3,1,3,3,3,3,3,3],
    [0,0,0,0,0,0,1,0,0,3,0,0,0,0,0,0,0,0,3,0,0,1,0,0,0,0,0,0],
    [0,0,0,0,0,0,1,0,0,3,0,0,0,0,0,0,0,0,3,0,0,1,0,0,0,0,0,0],
    [0,0,0,0,0,0,1,0,0,3,3,3,3,3,3,3,3,3,3,0,0,1,0,0,0,0,0,0],
    [0,0,0,0,0,0,1,0,0,3,0,0,0,0,0,0,0,0,3,0,0,1,0,0,0,0,0,0],
    [0,0,0,0,0,0,1,0,0,3,0,0,0,0,0,0,0,0,3,0,0,1,0,0,0,0,0,0],
    [0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0],
    [0,1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,1,0],
    [0,1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,1,0],
    [0,2,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,2,0],
    [0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,0,0,0],
    [0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,0,0,0],
    [0,1,1,1,1,1,1,0,0,1,1,1,1,0,0,1,1,1,1,0,0,1,1,1,1,1,1,0],
    [0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0],
    [0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0],
    [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0],
    [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
];

// Game State
let gameState = {
    score: 0,
    level: 1,
    lives: 3,
    highScore: localStorage.getItem('pacmanHighScore') || 0,
    gameRunning: true,
    powerMode: false,
    powerModeTimer: 0,
    freezeMode: false,
    freezeTimer: 0,
    speedMode: false,
    speedTimer: 0,
    rainbowMode: false,
    rainbowTimer: 0,
    ghostMultiplier: 1,
    scoreMultiplier: 1,
    maze: [],
    pelletCount: 0
};

// Pac-Man
let pacman = {
    x: 14,
    y: 23,
    direction: DIRECTIONS.LEFT,
    nextDirection: DIRECTIONS.LEFT,
    speed: 0.15,
    animationFrame: 0,
    mouthOpen: 0
};

// Ghosts
const ghostColors = ['#FF0000', '#FFB8FF', '#00FFFF', '#FFB852'];
const ghostNames = ['Blinky', 'Pinky', 'Inky', 'Clyde'];
let ghosts = [];

// Special pellets
let specialPellets = [];

// Particle effects
let particles = [];

// Initialize the game
function init() {
    // Copy maze layout
    gameState.maze = mazeLayout.map(row => [...row]);

    // Count pellets
    gameState.pelletCount = 0;
    for (let row of gameState.maze) {
        for (let cell of row) {
            if (cell === 1 || cell === 2) gameState.pelletCount++;
        }
    }

    // Initialize ghosts
    ghosts = [
        { x: 13.5, y: 14, direction: DIRECTIONS.LEFT, color: ghostColors[0], name: ghostNames[0], mode: 'chase', frightened: false, eaten: false },
        { x: 14.5, y: 14, direction: DIRECTIONS.UP, color: ghostColors[1], name: ghostNames[1], mode: 'chase', frightened: false, eaten: false },
        { x: 13.5, y: 15, direction: DIRECTIONS.UP, color: ghostColors[2], name: ghostNames[2], mode: 'scatter', frightened: false, eaten: false },
        { x: 14.5, y: 15, direction: DIRECTIONS.UP, color: ghostColors[3], name: ghostNames[3], mode: 'scatter', frightened: false, eaten: false }
    ];

    // Add special pellets
    addSpecialPellets();

    // Update display
    updateStats();

    // Start game loop
    gameLoop();
}

function addSpecialPellets() {
    specialPellets = [];
    const types = ['portal', 'freeze', 'speed', 'rainbow', 'mega'];

    // Add 2-3 special pellets per type
    types.forEach(type => {
        const count = Math.floor(Math.random() * 2) + 2;
        for (let i = 0; i < count; i++) {
            let x, y;
            do {
                x = Math.floor(Math.random() * COLS);
                y = Math.floor(Math.random() * ROWS);
            } while (gameState.maze[y][x] !== 1);

            specialPellets.push({ x, y, type, active: true });
            gameState.maze[y][x] = 3; // Remove regular pellet
        }
    });
}

// Game loop
let lastTime = 0;
function gameLoop(currentTime = 0) {
    const deltaTime = currentTime - lastTime;
    lastTime = currentTime;

    if (gameState.gameRunning) {
        update(deltaTime);
        render();
    }

    requestAnimationFrame(gameLoop);
}

// Update game state
function update(deltaTime) {
    // Update Pac-Man
    updatePacman(deltaTime);

    // Update ghosts
    if (!gameState.freezeMode) {
        ghosts.forEach(ghost => updateGhost(ghost, deltaTime));
    }

    // Update timers
    updateTimers(deltaTime);

    // Check collisions
    checkPelletCollision();
    checkGhostCollision();

    // Check win condition
    if (gameState.pelletCount === 0) {
        nextLevel();
    }

    // Update particles
    updateParticles(deltaTime);
}

function updatePacman(deltaTime) {
    const speed = gameState.speedMode ? pacman.speed * 1.8 : pacman.speed;

    // Try to change direction
    const nextX = pacman.x + pacman.nextDirection.x * speed;
    const nextY = pacman.y + pacman.nextDirection.y * speed;

    if (canMove(nextX, nextY)) {
        pacman.direction = pacman.nextDirection;
    }

    // Move in current direction
    const newX = pacman.x + pacman.direction.x * speed;
    const newY = pacman.y + pacman.direction.y * speed;

    if (canMove(newX, newY)) {
        pacman.x = newX;
        pacman.y = newY;
    }

    // Wrap around tunnel
    if (pacman.x < 0) pacman.x = COLS - 1;
    if (pacman.x >= COLS) pacman.x = 0;

    // Update animation
    pacman.mouthOpen = (pacman.mouthOpen + 0.15) % (Math.PI * 2);
}

function updateGhost(ghost, deltaTime) {
    if (ghost.eaten) {
        // Return to ghost house
        const targetX = 14;
        const targetY = 14;

        if (Math.abs(ghost.x - targetX) < 0.5 && Math.abs(ghost.y - targetY) < 0.5) {
            ghost.eaten = false;
            ghost.frightened = false;
            ghost.x = targetX;
            ghost.y = targetY;
            return;
        }

        moveGhostToTarget(ghost, targetX, targetY, 0.3);
        return;
    }

    const speed = ghost.frightened ? 0.07 : 0.1;

    // Choose target based on mode
    let targetX, targetY;

    if (ghost.frightened) {
        // Run away from Pac-Man
        targetX = ghost.x + (ghost.x - pacman.x);
        targetY = ghost.y + (ghost.y - pacman.y);
    } else if (ghost.mode === 'chase') {
        // Chase Pac-Man
        targetX = pacman.x;
        targetY = pacman.y;

        // Each ghost has slightly different behavior
        if (ghost.name === 'Pinky') {
            targetX += pacman.direction.x * 4;
            targetY += pacman.direction.y * 4;
        } else if (ghost.name === 'Inky') {
            targetX = pacman.x + pacman.direction.x * 2;
            targetY = pacman.y + pacman.direction.y * 2;
            targetX = targetX * 2 - ghosts[0].x;
            targetY = targetY * 2 - ghosts[0].y;
        } else if (ghost.name === 'Clyde') {
            const dist = Math.hypot(ghost.x - pacman.x, ghost.y - pacman.y);
            if (dist < 8) {
                targetX = 0;
                targetY = ROWS;
            } else {
                targetX = pacman.x;
                targetY = pacman.y;
            }
        }
    } else {
        // Scatter to corners
        const corners = [[2, 2], [COLS - 2, 2], [2, ROWS - 2], [COLS - 2, ROWS - 2]];
        const corner = corners[ghosts.indexOf(ghost) % 4];
        targetX = corner[0];
        targetY = corner[1];
    }

    moveGhostToTarget(ghost, targetX, targetY, speed);
}

function moveGhostToTarget(ghost, targetX, targetY, speed) {
    const possibleDirections = [DIRECTIONS.UP, DIRECTIONS.DOWN, DIRECTIONS.LEFT, DIRECTIONS.RIGHT];
    let bestDirection = ghost.direction;
    let minDistance = Infinity;

    // Try each direction
    for (let dir of possibleDirections) {
        // Don't reverse direction
        if (dir.x === -ghost.direction.x && dir.y === -ghost.direction.y) continue;

        const newX = ghost.x + dir.x * speed;
        const newY = ghost.y + dir.y * speed;

        if (canMove(newX, newY) || gameState.maze[Math.floor(newY)][Math.floor(newX)] === 4) {
            const distance = Math.hypot(newX - targetX, newY - targetY);
            if (distance < minDistance) {
                minDistance = distance;
                bestDirection = dir;
            }
        }
    }

    ghost.direction = bestDirection;
    ghost.x += ghost.direction.x * speed;
    ghost.y += ghost.direction.y * speed;

    // Wrap around tunnel
    if (ghost.x < 0) ghost.x = COLS - 1;
    if (ghost.x >= COLS) ghost.x = 0;
}

function canMove(x, y) {
    const tileX = Math.floor(x);
    const tileY = Math.floor(y);

    if (tileY < 0 || tileY >= ROWS || tileX < 0 || tileX >= COLS) return false;

    const tile = gameState.maze[tileY][tileX];
    return tile !== 0;
}

function updateTimers(deltaTime) {
    if (gameState.powerMode) {
        gameState.powerModeTimer -= deltaTime;
        if (gameState.powerModeTimer <= 0) {
            gameState.powerMode = false;
            gameState.ghostMultiplier = 1;
            ghosts.forEach(g => g.frightened = false);
            updatePowerUpDisplay();
        }
    }

    if (gameState.freezeMode) {
        gameState.freezeTimer -= deltaTime;
        if (gameState.freezeTimer <= 0) {
            gameState.freezeMode = false;
            updatePowerUpDisplay();
        }
    }

    if (gameState.speedMode) {
        gameState.speedTimer -= deltaTime;
        if (gameState.speedTimer <= 0) {
            gameState.speedMode = false;
            updatePowerUpDisplay();
        }
    }

    if (gameState.rainbowMode) {
        gameState.rainbowTimer -= deltaTime;
        if (gameState.rainbowTimer <= 0) {
            gameState.rainbowMode = false;
            gameState.scoreMultiplier = 1;
            updatePowerUpDisplay();
        }
    }
}

function checkPelletCollision() {
    const tileX = Math.floor(pacman.x);
    const tileY = Math.floor(pacman.y);

    // Regular pellet
    if (gameState.maze[tileY][tileX] === 1) {
        gameState.maze[tileY][tileX] = 3;
        gameState.score += 10 * gameState.scoreMultiplier;
        gameState.pelletCount--;
        createParticles(tileX, tileY, '#FFFF00', 3);
        updateStats();
    }

    // Power pellet
    if (gameState.maze[tileY][tileX] === 2) {
        gameState.maze[tileY][tileX] = 3;
        gameState.score += 50 * gameState.scoreMultiplier;
        gameState.pelletCount--;
        activatePowerMode(8000);
        createParticles(tileX, tileY, '#FF69B4', 8);
        updateStats();
    }

    // Special pellets
    for (let pellet of specialPellets) {
        if (pellet.active && pellet.x === tileX && pellet.y === tileY) {
            pellet.active = false;
            gameState.score += 100 * gameState.scoreMultiplier;
            activateSpecialPellet(pellet.type);
            updateStats();
        }
    }
}

function activateSpecialPellet(type) {
    switch (type) {
        case 'portal':
            // Teleport to random location
            let newX, newY;
            do {
                newX = Math.floor(Math.random() * COLS);
                newY = Math.floor(Math.random() * ROWS);
            } while (!canMove(newX, newY));
            pacman.x = newX;
            pacman.y = newY;
            createParticles(newX, newY, '#00FFFF', 15);
            break;

        case 'freeze':
            gameState.freezeMode = true;
            gameState.freezeTimer = 5000;
            updatePowerUpDisplay();
            break;

        case 'speed':
            gameState.speedMode = true;
            gameState.speedTimer = 7000;
            updatePowerUpDisplay();
            break;

        case 'rainbow':
            gameState.rainbowMode = true;
            gameState.rainbowTimer = 10000;
            gameState.scoreMultiplier = 2;
            updatePowerUpDisplay();
            break;

        case 'mega':
            activatePowerMode(15000);
            break;
    }
}

function activatePowerMode(duration) {
    gameState.powerMode = true;
    gameState.powerModeTimer = duration;
    gameState.ghostMultiplier = 1;
    ghosts.forEach(ghost => {
        if (!ghost.eaten) {
            ghost.frightened = true;
        }
    });
    updatePowerUpDisplay();
}

function checkGhostCollision() {
    for (let ghost of ghosts) {
        const dist = Math.hypot(ghost.x - pacman.x, ghost.y - pacman.y);

        if (dist < 0.5) {
            if (ghost.frightened && !ghost.eaten) {
                // Eat ghost
                ghost.eaten = true;
                ghost.frightened = false;
                const points = 200 * gameState.ghostMultiplier * gameState.scoreMultiplier;
                gameState.score += points;
                gameState.ghostMultiplier *= 2;
                createParticles(ghost.x, ghost.y, '#FFFFFF', 10);
                updateStats();
            } else if (!ghost.eaten && !gameState.powerMode) {
                // Lose life
                loseLife();
            }
        }
    }
}

function loseLife() {
    gameState.lives--;
    updateStats();

    if (gameState.lives <= 0) {
        gameOver();
    } else {
        // Reset positions
        pacman.x = 14;
        pacman.y = 23;
        pacman.direction = DIRECTIONS.LEFT;

        ghosts[0].x = 13.5; ghosts[0].y = 14;
        ghosts[1].x = 14.5; ghosts[1].y = 14;
        ghosts[2].x = 13.5; ghosts[2].y = 15;
        ghosts[3].x = 14.5; ghosts[3].y = 15;

        ghosts.forEach(g => {
            g.frightened = false;
            g.eaten = false;
        });
    }
}

function nextLevel() {
    gameState.level++;
    gameState.maze = mazeLayout.map(row => [...row]);

    // Count pellets
    gameState.pelletCount = 0;
    for (let row of gameState.maze) {
        for (let cell of row) {
            if (cell === 1 || cell === 2) gameState.pelletCount++;
        }
    }

    // Add special pellets
    addSpecialPellets();

    // Reset positions
    pacman.x = 14;
    pacman.y = 23;

    ghosts[0].x = 13.5; ghosts[0].y = 14;
    ghosts[1].x = 14.5; ghosts[1].y = 14;
    ghosts[2].x = 13.5; ghosts[2].y = 15;
    ghosts[3].x = 14.5; ghosts[3].y = 15;

    // Increase difficulty
    pacman.speed = Math.min(0.15 + gameState.level * 0.01, 0.25);

    updateStats();
}

function gameOver() {
    gameState.gameRunning = false;

    if (gameState.score > gameState.highScore) {
        gameState.highScore = gameState.score;
        localStorage.setItem('pacmanHighScore', gameState.highScore);
    }

    document.getElementById('finalScore').textContent = gameState.score;
    document.getElementById('finalLevel').textContent = gameState.level;
    document.getElementById('gameOver').style.display = 'block';
}

function restartGame() {
    document.getElementById('gameOver').style.display = 'none';

    gameState.score = 0;
    gameState.level = 1;
    gameState.lives = 3;
    gameState.gameRunning = true;
    gameState.powerMode = false;
    gameState.freezeMode = false;
    gameState.speedMode = false;
    gameState.rainbowMode = false;
    gameState.scoreMultiplier = 1;

    pacman.speed = 0.15;
    particles = [];

    init();
}

// Rendering
function render() {
    // Clear canvas
    ctx.fillStyle = '#000000';
    ctx.fillRect(0, 0, canvas.width, canvas.height);

    // Rainbow mode background effect
    if (gameState.rainbowMode) {
        const hue = (Date.now() / 10) % 360;
        ctx.fillStyle = `hsla(${hue}, 100%, 10%, 0.3)`;
        ctx.fillRect(0, 0, canvas.width, canvas.height);
    }

    // Draw maze
    drawMaze();

    // Draw special pellets
    drawSpecialPellets();

    // Draw particles
    drawParticles();

    // Draw Pac-Man
    drawPacman();

    // Draw ghosts
    ghosts.forEach(drawGhost);
}

function drawMaze() {
    for (let y = 0; y < ROWS; y++) {
        for (let x = 0; x < COLS; x++) {
            const cell = gameState.maze[y][x];

            if (cell === 0) {
                // Wall
                ctx.fillStyle = gameState.rainbowMode ?
                    `hsl(${(x * 10 + y * 10 + Date.now() / 20) % 360}, 70%, 50%)` :
                    '#0000FF';
                ctx.fillRect(x * TILE_SIZE, y * TILE_SIZE, TILE_SIZE, TILE_SIZE);
            } else if (cell === 1) {
                // Pellet
                ctx.fillStyle = '#FFB897';
                ctx.beginPath();
                ctx.arc(x * TILE_SIZE + TILE_SIZE / 2, y * TILE_SIZE + TILE_SIZE / 2, 2, 0, Math.PI * 2);
                ctx.fill();
            } else if (cell === 2) {
                // Power pellet
                const pulse = Math.sin(Date.now() / 200) * 2 + 6;
                ctx.fillStyle = '#FFB8FF';
                ctx.beginPath();
                ctx.arc(x * TILE_SIZE + TILE_SIZE / 2, y * TILE_SIZE + TILE_SIZE / 2, pulse, 0, Math.PI * 2);
                ctx.fill();
            }
        }
    }
}

function drawSpecialPellets() {
    const time = Date.now() / 100;

    for (let pellet of specialPellets) {
        if (!pellet.active) continue;

        const x = pellet.x * TILE_SIZE + TILE_SIZE / 2;
        const y = pellet.y * TILE_SIZE + TILE_SIZE / 2;

        let color;
        let symbol;

        switch (pellet.type) {
            case 'portal':
                color = '#00FFFF';
                symbol = '◈';
                break;
            case 'freeze':
                color = '#88CCFF';
                symbol = '❄';
                break;
            case 'speed':
                color = '#FFFF00';
                symbol = '⚡';
                break;
            case 'rainbow':
                color = `hsl(${time * 20 % 360}, 100%, 60%)`;
                symbol = '★';
                break;
            case 'mega':
                color = '#FF00FF';
                symbol = '●';
                break;
        }

        // Pulsing effect
        const pulse = Math.sin(time + pellet.x + pellet.y) * 3 + 8;

        ctx.fillStyle = color;
        ctx.beginPath();
        ctx.arc(x, y, pulse, 0, Math.PI * 2);
        ctx.fill();

        // Draw symbol
        ctx.fillStyle = '#000';
        ctx.font = 'bold 12px Arial';
        ctx.textAlign = 'center';
        ctx.textBaseline = 'middle';
        ctx.fillText(symbol, x, y);
    }
}

function drawPacman() {
    const x = pacman.x * TILE_SIZE + TILE_SIZE / 2;
    const y = pacman.y * TILE_SIZE + TILE_SIZE / 2;

    // Calculate rotation based on direction
    let rotation = 0;
    if (pacman.direction === DIRECTIONS.RIGHT) rotation = 0;
    else if (pacman.direction === DIRECTIONS.DOWN) rotation = Math.PI / 2;
    else if (pacman.direction === DIRECTIONS.LEFT) rotation = Math.PI;
    else if (pacman.direction === DIRECTIONS.UP) rotation = -Math.PI / 2;

    const mouthAngle = Math.sin(pacman.mouthOpen) * 0.3 + 0.2;

    ctx.save();
    ctx.translate(x, y);
    ctx.rotate(rotation);

    // Body
    ctx.fillStyle = gameState.speedMode ? '#00FF00' : '#FFFF00';
    ctx.beginPath();
    ctx.arc(0, 0, TILE_SIZE / 2 - 2, mouthAngle, Math.PI * 2 - mouthAngle);
    ctx.lineTo(0, 0);
    ctx.fill();

    // Eye
    ctx.fillStyle = '#000';
    ctx.beginPath();
    ctx.arc(3, -TILE_SIZE / 4, 2, 0, Math.PI * 2);
    ctx.fill();

    ctx.restore();
}

function drawGhost(ghost) {
    const x = ghost.x * TILE_SIZE + TILE_SIZE / 2;
    const y = ghost.y * TILE_SIZE + TILE_SIZE / 2;
    const size = TILE_SIZE / 2 - 2;

    ctx.save();
    ctx.translate(x, y);

    if (ghost.eaten) {
        // Eyes only
        ctx.fillStyle = '#FFF';
        ctx.beginPath();
        ctx.arc(-4, -2, 3, 0, Math.PI * 2);
        ctx.arc(4, -2, 3, 0, Math.PI * 2);
        ctx.fill();

        ctx.fillStyle = '#0000FF';
        ctx.beginPath();
        ctx.arc(-4, -2, 1.5, 0, Math.PI * 2);
        ctx.arc(4, -2, 1.5, 0, Math.PI * 2);
        ctx.fill();
    } else {
        // Body
        if (ghost.frightened) {
            const blinkTime = gameState.powerModeTimer < 2000 ?
                (Math.floor(Date.now() / 200) % 2 === 0 ? '#0000FF' : '#FFF') : '#0000FF';
            ctx.fillStyle = blinkTime;
        } else {
            ctx.fillStyle = ghost.color;
        }

        // Round top
        ctx.beginPath();
        ctx.arc(0, 0, size, Math.PI, 0);
        ctx.fill();

        // Rectangle body
        ctx.fillRect(-size, 0, size * 2, size);

        // Wavy bottom
        ctx.beginPath();
        ctx.moveTo(-size, size);
        for (let i = 0; i <= 4; i++) {
            const waveX = -size + (size * 2 / 4) * i;
            const waveY = size + (i % 2 === 0 ? 3 : -3);
            ctx.lineTo(waveX, waveY);
        }
        ctx.lineTo(-size, size);
        ctx.fill();

        // Eyes
        if (ghost.frightened && gameState.powerModeTimer > 2000) {
            ctx.fillStyle = '#FFF';
            ctx.beginPath();
            ctx.arc(-3, 0, 2, 0, Math.PI * 2);
            ctx.arc(3, 0, 2, 0, Math.PI * 2);
            ctx.fill();
        } else {
            ctx.fillStyle = '#FFF';
            ctx.beginPath();
            ctx.arc(-4, -2, 4, 0, Math.PI * 2);
            ctx.arc(4, -2, 4, 0, Math.PI * 2);
            ctx.fill();

            // Pupils
            ctx.fillStyle = '#000';
            const pupilOffsetX = ghost.direction.x * 2;
            const pupilOffsetY = ghost.direction.y * 2;
            ctx.beginPath();
            ctx.arc(-4 + pupilOffsetX, -2 + pupilOffsetY, 2, 0, Math.PI * 2);
            ctx.arc(4 + pupilOffsetX, -2 + pupilOffsetY, 2, 0, Math.PI * 2);
            ctx.fill();
        }
    }

    ctx.restore();
}

// Particle system
function createParticles(x, y, color, count) {
    for (let i = 0; i < count; i++) {
        particles.push({
            x: x * TILE_SIZE + TILE_SIZE / 2,
            y: y * TILE_SIZE + TILE_SIZE / 2,
            vx: (Math.random() - 0.5) * 2,
            vy: (Math.random() - 0.5) * 2,
            life: 1,
            color: color
        });
    }
}

function updateParticles(deltaTime) {
    for (let i = particles.length - 1; i >= 0; i--) {
        const p = particles[i];
        p.x += p.vx;
        p.y += p.vy;
        p.life -= 0.02;

        if (p.life <= 0) {
            particles.splice(i, 1);
        }
    }
}

function drawParticles() {
    for (let p of particles) {
        ctx.fillStyle = p.color;
        ctx.globalAlpha = p.life;
        ctx.beginPath();
        ctx.arc(p.x, p.y, 3, 0, Math.PI * 2);
        ctx.fill();
    }
    ctx.globalAlpha = 1;
}

// UI Updates
function updateStats() {
    document.getElementById('score').textContent = gameState.score;
    document.getElementById('level').textContent = gameState.level;
    document.getElementById('lives').textContent = gameState.lives;
    document.getElementById('highScore').textContent = gameState.highScore;
    document.getElementById('multiplierIndicator').textContent =
        `Multiplier: x${gameState.scoreMultiplier}`;
}

function updatePowerUpDisplay() {
    const powerUpEl = document.getElementById('powerUpIndicator');
    const modes = [];

    if (gameState.powerMode) modes.push('POWER');
    if (gameState.freezeMode) modes.push('FREEZE');
    if (gameState.speedMode) modes.push('SPEED');
    if (gameState.rainbowMode) modes.push('RAINBOW');

    if (modes.length > 0) {
        powerUpEl.textContent = modes.join(' + ');
        powerUpEl.classList.add('active');
    } else {
        powerUpEl.textContent = 'Normal Mode';
        powerUpEl.classList.remove('active');
    }
}

// Input handling
document.addEventListener('keydown', (e) => {
    switch(e.key) {
        case 'ArrowUp':
        case 'w':
        case 'W':
            pacman.nextDirection = DIRECTIONS.UP;
            e.preventDefault();
            break;
        case 'ArrowDown':
        case 's':
        case 'S':
            pacman.nextDirection = DIRECTIONS.DOWN;
            e.preventDefault();
            break;
        case 'ArrowLeft':
        case 'a':
        case 'A':
            pacman.nextDirection = DIRECTIONS.LEFT;
            e.preventDefault();
            break;
        case 'ArrowRight':
        case 'd':
        case 'D':
            pacman.nextDirection = DIRECTIONS.RIGHT;
            e.preventDefault();
            break;
    }
});

// Start the game
init();
