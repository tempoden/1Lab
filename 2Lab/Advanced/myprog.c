#include <stdio.h>
#include <stdlib.h>

typedef int key;
void swap(key *a1, key *a2){
        key tmp = *a1;
        *a1 = *a2;
        *a2 = tmp;
}
void quicksort(key *a, int l, int r) {
        key x;
        int i, j;
        do{
                x = a[(l + r) / 2];
                i = l; j = r;
                do {
                        while (a[i] < x) {
                                i++;
                        }
                        while (x < a[j]) {
                                j--;
                        }
                        if (i <= j) {
                                swap(&a[i++], &a[j--]);
                        }
                } while (i < j);
                if ((l < j) && (i < r)){
                        if ((j - l) < (r - i)){
                                quicksort(a, i, r);
                                r = j;
                                continue;
                        }
                        else{
                                quicksort(a, l, j);
                                l = i;
                                continue;
                        }
                }
                else if (l < j){
                        quicksort(a, l, j);
                }
                else if (i < r){
                        quicksort(a, i, r);
                }
                break;
        } while (1);
}
int main(int argc, char* argv[]) {
        int i, n;
        key *a;
        if (argc > 2) {
                n = atoi(argv[2]);
                a = (key*)malloc(n * sizeof(key));
                for (i = 0; i < n; i++) {
                        a[i] = atoi(argv[i + 3]);
                }
        }
        else {
                /*scanf("%d", &n);
                a = (key*)malloc(n * sizeof(key));
                for (i = 0; i < n; i++) {
                        scanf("%d", &a[i]);
                }*/
                srand(time(NULL));
                n = 10 + rand() % 50;
                printf("Arr_length %d\n",n);
                printf("Generated array\n");
                a = (key*)malloc(n * sizeof(key));
                for (i = 0; i < n; i++) {
                        a[i] = -5000+ rand() % 10000;
                        (i % 12 == 0) ? printf("\n%8d ",a[i]) : printf("%5d",a[i]);
                }
        }
        quicksort(a, 0, n - 1);
        printf("\n\n\nSorted array");
        for (i = 0; i < n; i++) {
                (i % 12 == 0) ? printf("\n%8d ", a[i]) : printf("%5d", a[i]);
        }
	printf("\n");
        return 0;
}
