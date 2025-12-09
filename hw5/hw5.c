#include <stdio.h>
#include <stdlib.h>

typedef struct Car {
    void (*startEngine)();
    void (*accelerate)();
    void (*brake)();
} Car;

//we can make these functions take in a struct object to reference the actual fields as well, to make it more personalized
void startEngine() {
    printf("Engine started!\n");
}

void accelerate() {
    printf("Car: Pressing gas pedal...\n");
}

void brake() {
    printf("Car: Applying brakes...\n");
    
}

int main() {
    
    // Create object using pointer to abstract class
    Car *myCar = (Car*) malloc(sizeof(Car));
    if(myCar == NULL) {
        printf("Unable to assign memory\n");
        return 1;
    }
    myCar->startEngine = startEngine;
    myCar->accelerate = accelerate;
    myCar->brake = brake;
    myCar->startEngine();
    myCar->accelerate();
    myCar->brake();
 
    free(myCar); 
    return 0;
}