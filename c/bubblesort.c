#include<stdio.h>

void bubbleSort(int arr[],int n){
	int temp;
	for(int i=0;i<n;i++){
		for(int j=0;j<i+1;j++){
			if(arr[i]<arr[j]){
				temp=arr[i];
				arr[i]=arr[j];
				arr[j]=temp;
			}
		}
	}
}

int main(){
	int size;
	printf("Enter the size of the Array: ");
	scanf("%d",&size);
	int arr[size];
	printf("Enter the Array Elements: ");
	for(int i=0;i<size;i++)
		scanf("%d",&arr[i]);
	bubbleSort(arr,size);
	for(int i=0;i<size;i++)
		printf("%d ",arr[i]);
	printf("\n");
	return 0;
}
