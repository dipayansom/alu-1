package com.pack.model;

public class Profile { 
		private String id,name,designation,office;

			public Profile(String id, String name, String designation, String office) {
				super();
				this.id = id;
				this.name = name;
				this.designation = designation;
				this.office = office;
			}

			public Profile() {
				super();
				// TODO Auto-generated constructor stub
			}

			public String getId() {
				return id;
			}

			public void setId(String id) {
				this.id = id;
			}

			public String getName() {
				return name;
			} 
		  
			public void setName(String name) {
					this.name = name;
				}

				public String getDesignation() {
					return designation;
				}

				public void setDesignation(String designation) {
					this.designation = designation;
				}

				public String getOffice() {
					return office;
				}

				public void setOffice(String office) {
					this.office = office;
				} 
				 

}
