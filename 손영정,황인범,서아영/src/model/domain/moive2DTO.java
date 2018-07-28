package model.domain;

public class moive2DTO {
	private String title;
	private String image;
	private String director;
	private String actor;
	private String userRating;
	public moive2DTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public moive2DTO(String title, String image, String director, String actor, String userRating) {
		super();
		this.title = title;
		this.image = image;
		this.director = director;
		this.actor = actor;
		this.userRating = userRating;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getUserRating() {
		return userRating;
	}
	public void setUserRating(String userRating) {
		this.userRating = userRating;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("moive2DTO [title=");
		builder.append(title);
		builder.append(", image=");
		builder.append(image);
		builder.append(", director=");
		builder.append(director);
		builder.append(", actor=");
		builder.append(actor);
		builder.append(", userRating=");
		builder.append(userRating);
		builder.append("]");
		return builder.toString();
	}

	
	
	
	
}
