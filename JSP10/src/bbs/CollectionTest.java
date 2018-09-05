package bbs;

import java.util.ArrayList;

public class CollectionTest {

	public static void main(String[] args) {
		ArrayList list = new ArrayList();
		
		list.add(100);
		list.add("안녕하세요.");
		list.add(123.55);
		
		System.out.println(list.get(0));
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
		
		String hi = (String)list.get(1);
		System.out.println(hi);
		
		
		
		
	}

}
