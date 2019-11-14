/* File: Challenge-3.k
 ---------------------------
Write a program that teaches Karel to climb a mountain.

The steps involved are to:

1. Move up to the mountain.
2. Climb each of the four stair steps to reach the summit.
3. Plant a flag (represented by a beeper, of course) at the top of the mountain.
4. Climb down each of the four stair steps on the opposite side.
5. Move forward to the east end of the world.

*/
import "turns";

function stepUp(){
	while(frontIsBlocked()){
		turnLeft();
		move();
		turnRight();
		move();
	}
}

function stepDown(){
	turnRight();
	if(frontIsClear()){
		move();
		turnLeft();
		}
}

function moveUpMountain(){
	while(frontIsClear()){
		move();
	}
	stepUp();
}

function plantFlag(){
	putBeeper();
}

function moveDownMountain(){
	while(frontIsClear()){
	move();
	stepDown();
	}
	turnLeft();
	
}

function Solve(){
	moveUpMountain();
	plantFlag();
	moveDownMountain();
}
