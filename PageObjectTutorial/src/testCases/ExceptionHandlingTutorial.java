package testCases;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ExceptionHandlingTutorial {

	 static int a=5;
	static int b=0;
	static int c;
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ExceptionHandlingTutorial  eh=new ExceptionHandlingTutorial();
		try {
			c=b/a;
			System.out.println(c);
		}
		/*catch(Exception e) {
		System.out.println("There is error in try block");
	}*/
		finally {
			System.out.println("This is finally block");
		}

		//List<>
		
		/*HashSet<String> st=new HashSet<String>();
		st.add("Shyam");
		st.add("Babu bhai");
		st.add("Raju");
		System.out.println(st);
		
		
		ArrayList<String> ar= new ArrayList<String>();{
			ar.add("Shyam");
			ar.add("Babu bhai");
			ar.add("Raju");
		}
		
		Iterator<String> i= st.iterator();
		while(i.hasNext()) {
		System.out.println(i.next());
		}
		System.out.println(ar);
		
		
		*/
		//hashMap Example
		
		/*HashMap<Integer,String> hm= new HashMap<Integer,String>();
		{
			hm.put(1, "Hello");
			hm.put(2, "good");
			hm.put(3,"morning");
			Set kv=hm.entrySet();
			
			Iterator itr=kv.iterator();
			
			while(itr.hasNext()) {
				System.out.println(itr.next());
				Map.Entry mp=(Map.Entry) itr.next();
				System.out.println(mp.getKey());
				System.out.println(mp.getValue());
			}
				*/
			
		
		
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
}
}