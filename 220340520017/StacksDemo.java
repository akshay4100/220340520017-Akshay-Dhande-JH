class Stacks
{
	
	int top1 = -1;
	int top2 = 10;
	int arr[] = new int[10];
	
	
	
	void push1(int val)
	{
		if(top1<6)
		{
			top1++;
			arr[top1] = val;
		}
		else
		{
			System.out.println("Stack1 Full");
		}
	}
	
	
	void push2(int val)
	{
		if(top2 >=6)
		{
			top2--;
			arr[top2] = val;
		}
		else
		{
			System.out.println("Stack2 Full");
		}
	}
	
	
	void pop1()
	{
		if(top1 == -1)
		{
			System.out.println("Stack1 Empty");
			return;
		}
		else
		{
			int popped = arr[top1];
			top1--;
			System.out.println("Popped element from stack1 is "+popped);
		}
	}
	
	void pop2()
	{
		if(top2 ==10)
		{
			System.out.println("Stack2 Empty");
			return;
		}
		else
		{
			
			int popped = arr[top2];
			top2++;
			System.out.println("Popped element from stack2 is "+popped);
		}
	}
	
}
	class StacksDemo
	{
		public static void main(String args[])
		{
			Stacks s = new Stacks();
			s.push1(5); 
			s.push2(10); 
			s.push2(15); 
			s.push1(11); 
			s.push2(7); 
			s.push2(40);

			
			
			s.pop1();
			s.pop2();
		}
		
	}
	