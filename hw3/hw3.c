#include <stdio.h>

//constants
const int SIZE = 3;

//prototypes
void matmult(int result[3][3], int first[3][3], int second[3][3]);
void matadd (int result[3][3], int first[3][3], int second[3][3]);
void printInputArrays(int first[SIZE][SIZE], int second[SIZE][SIZE]);
void printOutputArray(int arr[SIZE][SIZE]);


int main() {
    int A[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
    int B[3][3] = {{1, 2, 0}, {3, 4, 5}, {0, 6, 7}};
    int resultArray[SIZE][SIZE] = {};

    printInputArrays(A, B);
    matmult(resultArray, A, B);
    matadd(resultArray, A, B);
    printOutputArray(resultArray);
    return 0;
}

void matmult(int result[SIZE][SIZE], int first[SIZE][SIZE], int second[SIZE][SIZE]) {
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            result[i][j] = 0;
            for (int k = 0; k < 3; k++) {
                result[i][j] += first[i][k] * second[k][j];
            }
        }
    }
}


void matadd (int result[SIZE][SIZE], int first[SIZE][SIZE], int second[SIZE][SIZE]) {
    for(int i = 0; i < 3; i++) {
        for(int j = 0; j<3; j++) {
            result[i][j] = first[i][j] + second[i][j];
        }
    }
}


void printInputArrays(int first[SIZE][SIZE], int second[SIZE][SIZE]) {
    for(int i = 0; i < SIZE; i++) {
        //print A
        if(i == 1) printf("A = "); else printf("    ");
        if(i == 1) printf("|"); else printf("[");
        for(int j = 0; j<SIZE; j++) {
            printf("%i", first[i][j]);
            if(j < SIZE-1) printf(" ");
        }
        if(i == 1) printf("|"); else printf("]");

        printf("          ");
        //print B
        if(i == 1) printf("B = "); else printf("    ");
        if(i == 1) printf("|"); else printf("[");
        for(int j = 0; j<SIZE; j++) {
            printf("%i", second[i][j]);
            if(j < SIZE-1) printf(" ");
        }
        if(i == 1) printf("|\n"); else printf("]\n");

    }
}


void printOutputArray(int arr[SIZE][SIZE]) {
    const int DOUBLE_DIGIT= 9;
    for(int i = 0; i < SIZE; i++) {
        if(i == 1) printf("A*B+A = "); else printf("        ");
        if(i == 1) printf("|"); else printf("[");
        for(int j = 0; j<SIZE; j++) {
            int currNum = arr[i][j];
            printf(((currNum > DOUBLE_DIGIT) ? "%i" : " %i"), currNum);
            if(j < SIZE-1) printf(" ");
        }
        if(i == 1) printf("|\n"); else printf("]\n");
    }
}