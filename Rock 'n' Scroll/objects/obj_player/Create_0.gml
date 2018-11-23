/// @description Insert description here


//Movement Speed
baseVSpeed = 20;
baseHSpeed = 10;
verticalSpeed = baseVSpeed;
horizontalSpeed = baseHSpeed;

//Direction
dir = 0;
playerMovement = 0;


//General
spriteWidth = 16;
spriteHeight = 16;
playerGravity = 7;



//Jumping
jumping = false;
canJump = false;
jumps = 2;
maxJumps = 2;
jumpFallRate = 1;
peakJump = -500;

//List of possible player floors
playerFloors[1] = obj_ground_basic;

