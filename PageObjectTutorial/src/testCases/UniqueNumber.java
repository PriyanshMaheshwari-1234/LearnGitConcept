package testCases;

import java.util.ArrayList;

public class UniqueNumber {
	
	public static void main(String[] args) {
 
	
		int[] num= {3,6,2,4,6,7,8,3,2,4,5,6,7,8,9,9,8,7,6,4,2,2,4,0};
		
		ArrayList<Integer> al= new ArrayList<Integer>();
		
		for(int i=0;i<num.length;i++) {
			int k=0;
			if(!al.contains(num[i])) {
				al.add(num[i]);
				k++;
			
			
			for(int j=i+1;j<num.length;j++) {
				if(num[i]==num[j]) {
					k++;
				}
				

			}
			/*System.out.println("Digit is "+num[i]);
			System.out.println("Count is "+k);*/
			
			if(k==1) {
				System.out.println("unique number is "+num[i]);
			
			}
			
			}
			
		}
		
		//removing duplicates
		System.out.println(al);
		
	}}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		/*for(int i =0;i<num.length;i++) {
			int k=0;
			if(!al.contains(num[i])) {
				al.add(num[i]);
				k++;}
			
		for(int j=i+1;j<num.length;j++) {
			
			if(num[i]==num[j]) {
				k++;
			}
			
			}
			
		System.out.println("nember is "+num[i]);
		System.out.println("repeated "+k+" times");
		
		}
		
		
		

	}}







public static void main(String[] args) { // TODO Auto-generated method stub

int a[] ={ 4,5,5,5,4,6,6,9,4}; // Print unique number from the list- Amazon  
//print the string in reverse
ArrayList<Integer>ab =new ArrayList<Integer>(); 
for(int i=0;i<a.length;i++) { 
	int k=0; 
if(!ab.contains(a[i])) { ab.add(a[i]); k++; for(int j=i+1;j<a.length;j++) { if(a[i]==a[j]) { k++; } } // System.out.println(a[i]); 
//System.out.println(k); 
if(k==1) System.out.println(a[i]+"is unique number"); } } }
}


*/