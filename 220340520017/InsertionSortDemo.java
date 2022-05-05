import java.util.Scanner;
class InsertionSortDemo
{
	Scanner sc = new Scanner(System.in);
	public static void insertionSort(int a1[],int n)
	{
		for(int i = 1;i<n;i++)
		{
			int j;
			int temp = a1[i];
			
			for(j=i-1;j>=0 && a1[j] > temp;j--)
			{
				a1[j+1] = a1[j];
			}
			a1[j+1] = temp;
			displayArray(a1,n);
		}
		
	}
	
	public static void displayArray(int a1[],int n1)
	{
		for(int i = 0;i<n1;i++)
		{
			System.out.print(a1[i]+" ");
			
		}
		System.out.println("");
	}
	public static void main(String args[])
	{
		Scanner sc = new Scanner(System.in);
		//enter size of array
		int n = sc.nextInt();
		int a1[] = new int[n];
		
		for(int i = 0;i<n;i++)
		{
			a1[i] = sc.nextInt();
			
		}
		System.out.println("");
		insertionSort(a1,n);
	}
}
