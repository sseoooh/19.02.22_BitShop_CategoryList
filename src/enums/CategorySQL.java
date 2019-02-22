package enums;

public enum CategorySQL {
	CATE_LIST;
		
		@Override
		public String toString() {
			StringBuffer query= new StringBuffer();		
		
			switch (this) {
			case CATE_LIST:
				System.out.println("CategorySQL에서 CATE_LIST을 탐");
				query.append("SELECT * FROM CATEGORIES");
				
						break;
				}
			return query.toString();
		}
}
