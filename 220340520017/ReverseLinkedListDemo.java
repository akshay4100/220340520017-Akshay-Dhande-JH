import java.util.Scanner;
class ReverseLinkedList
{
	static class Node
	{
		int data;
		Node next;
		
		public Node()
		{
			data = 0;
			next = null;
		}
		
		public Node(int val)
		{
			data = val;
			next = null;
		}
	}
	
	Node head;
	
	ReverseLinkedList()
	{
		head = null;
	}
	
	
	void display()
	{
		Node trav = head;
		if(head == null)
		{
			System.out.println("List is Empty");
			return;
		}
		else
		{
			
			while(trav != null)
			{
				System.out.println(trav.data+" ");
				trav = trav.next;
			}
			System.out.println("");
		}
		
	}
	
	
	void addFirst(int val)
	{
		Node newNode  = new Node(val);
		if(head == null)
		{
			head = newNode;
		}
		else
		{
			newNode.next = head;
			head = newNode;
		}
	}
	
	boolean search(int val)
	{
		boolean bool = false;
		Node trav = head;
		while(trav != null)
		{
			if(trav.data == val)
			{
				bool = true;
				break;
			}
			trav = trav.next;
		}
		return false;
	}
	
	void reverseList()
	{
		Node LinkedListNode = head;
		Node prev = null;
		Node next = null;
		
		while(LinkedListNode != null)
		{
			int s = LinkedListNode.data;
			next = LinkedListNode.next;
			boolean check = search(s);
			if(!check)
			{
				LinkedListNode.next = prev;
				prev = LinkedListNode;
				LinkedListNode = next;
			}
		}
		
	}
}

class ReverseLinkedListDemo
{
	public static void main(String args[])
	{
		Scanner sc = new Scanner(System.in);
		
		
		ReverseLinkedList list = new ReverseLinkedList();
		
		
		list.addFirst(5);
		list.addFirst(4);
		list.addFirst(3);
		list.addFirst(2);
		list.addFirst(1);
		list.addFirst(5);
		list.addFirst(1);
		
		list.reverseList();
		list.display();
	}
	
}