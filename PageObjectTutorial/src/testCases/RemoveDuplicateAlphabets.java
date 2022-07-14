package testCases;

import java.util.HashSet;

public class RemoveDuplicateAlphabets {

	public static void main(String[] args) {

		String name = "Accenture";
		
		String s = new String();
		for(int i=0;i<name.length();i++) {
			char val=name.charAt(i);
			
			if(s.indexOf(val)<0) {
				//System.out.println(s.indexOf(val));
				s=s+val;
				//System.out.println(s.indexOf(val));
			}
			
		}
		System.out.println(s);
	}}
		/*HashSet<Character> hs= new HashSet<Character>();
		for(int i=0;i<name.length();i++) {
			char num=name.charAt(i);
		HashSet<String> hs= new HashSet<String>();
		for(int i=0;i<name.length();i++) {
			char num=name.charAt(i);
			
			//String s =Character.toString(num);
			
		StringBuilder sb = new StringBuilder();
		for(int i=0;i<name.length();i++) {
			int k=1;
			char num=name.charAt(i);
			for(int j=i+1;j<name.length();j++) {
				if(num==name.charAt(j)){
					k++;
					
					break;
				}
				else
				k=1;
				
			
			}
			if(k==1) {
				sb.append(num);
			}
		
			
		}
		System.out.println(sb);

		
		
		hs.add(num);  }
		System.out.println(hs);
		*/
	
