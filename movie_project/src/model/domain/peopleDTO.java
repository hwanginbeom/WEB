package model.domain;

public class peopleDTO {
	
	private String id; 
	private String password;
	private String email;
	public peopleDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public peopleDTO(String id, String password, String email) {
		super();
		this.id = id;
		this.password = password;
		this.email = email;
	}
	public String getName() {
		return id;
	}
	public void setName(String name) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("peopleDTO [name=");
		builder.append(id);
		builder.append(", password=");
		builder.append(password);
		builder.append(", email=");
		builder.append(email);
		builder.append("]");
		return builder.toString();
	}
	
	
}
