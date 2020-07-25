/*
 * trans.c - Matrix transpose B = A^T
 *
 * name: 施超
 * loginID: 518021910499
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>

#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded.
 */
char transpose_submit_desc[] = "Transpose submission";

void transpose_submit(int M, int N, int A[N][M], int B[M][N]) {
    int ii, jj, i;
    if (M == 32) {
        for (jj = 0; jj < M; jj += 8)
            for (ii = 0; ii < N; ii += 8)
                for (i = ii; i < ii + 8; i++) {
                    int t0 = A[jj][i];
                    int t1 = A[jj + 1][i];
                    int t2 = A[jj + 2][i];
                    int t3 = A[jj + 3][i];
                    int t4 = A[jj + 4][i];
                    int t5 = A[jj + 5][i];
                    int t6 = A[jj + 6][i];
                    int t7 = A[jj + 7][i];
                    B[i][jj] = t0;
                    B[i][jj + 1] = t1;
                    B[i][jj + 2] = t2;
                    B[i][jj + 3] = t3;
                    B[i][jj + 4] = t4;
                    B[i][jj + 5] = t5;
                    B[i][jj + 6] = t6;
                    B[i][jj + 7] = t7;
                }
    } else if (M == 61) {
        for (jj = 0; jj + 8 <= N; jj += 8)
            for (ii = 0; ii + 8 <= M; ii += 8)
                for (i = ii; i < ii + 8; i++) {
                    int t0 = A[jj][i];
                    int t1 = A[jj + 1][i];
                    int t2 = A[jj + 2][i];
                    int t3 = A[jj + 3][i];
                    int t4 = A[jj + 4][i];
                    int t5 = A[jj + 5][i];
                    int t6 = A[jj + 6][i];
                    int t7 = A[jj + 7][i];
                    B[i][jj] = t0;
                    B[i][jj + 1] = t1;
                    B[i][jj + 2] = t2;
                    B[i][jj + 3] = t3;
                    B[i][jj + 4] = t4;
                    B[i][jj + 5] = t5;
                    B[i][jj + 6] = t6;
                    B[i][jj + 7] = t7;
                }
        for (int j = jj; j < N; j++)
            for (i = 0; i < M; i++) {
                B[i][j] = A[j][i];
            }
        for (int j = 0; j < N; j++)
            for (i = ii; i < M; i++) {
                B[i][j] = A[j][i];
            }
    } else if (M == 64) {
        int i, j, k, t0, t1, t2, t3, t4, t5, t6, t7;
        for (i = 0; i < 64; i += 8) {
            for (j = 0; j < 64; j += 8) {
                // Slicing the matrix to 8x8 sub-matrices
                // Copy top-left part to B, tansposing the left half of a line
                // in A, caching another half in top-right part of B
                for (k = j; k < j + 4; ++k) {
                    t0 = A[k][i];
                    t1 = A[k][i + 1];
                    t2 = A[k][i + 2];
                    t3 = A[k][i + 3];
                    t4 = A[k][i + 4];
                    t5 = A[k][i + 5];
                    t6 = A[k][i + 6];
                    t7 = A[k][i + 7];
                    B[i][k] = t0;
                    B[i + 1][k] = t1;
                    B[i + 2][k] = t2;
                    B[i + 3][k] = t3;
                    B[i][k + 4] = t4;
                    B[i + 1][k + 4] = t5;
                    B[i + 2][k + 4] = t6;
                    B[i + 3][k + 4] = t7;
                }
                // Moving cached top-right part in B to correct position and
                // transposes bottom-left part in A to B
                for (k = i; k < i + 4; ++k) {
                    t0 = B[k][j + 4];
                    t1 = B[k][j + 5];
                    t2 = B[k][j + 6];
                    t3 = B[k][j + 7];
                    t4 = A[j + 4][k];
                    t5 = A[j + 5][k];
                    t6 = A[j + 6][k];
                    t7 = A[j + 7][k];
                    B[k][j + 4] = t4;
                    B[k][j + 5] = t5;
                    B[k][j + 6] = t6;
                    B[k][j + 7] = t7;
                    B[k + 4][j] = t0;
                    B[k + 4][j + 1] = t1;
                    B[k + 4][j + 2] = t2;
                    B[k + 4][j + 3] = t3;
                }
                // Transposing the right-bottom 4x4 part in A
                for (k = i + 4; k < i + 8; ++k) {
                    t0 = A[j + 4][k];
                    t1 = A[j + 5][k];
                    t2 = A[j + 6][k];
                    t3 = A[j + 7][k];
                    B[k][j + 4] = t0;
                    B[k][j + 5] = t1;
                    B[k][j + 6] = t2;
                    B[k][j + 7] = t3;
                }
            }
        }
    }
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "baseline";

void trans(int M, int N, int A[N][M], int B[M][N]) {
    int i, j, tmp;
    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions() {
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);
}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N]) {
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}
