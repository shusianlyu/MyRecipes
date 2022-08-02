package dbmanager;

//This is model class represent for recipe entity.

public class Recipe {
	
	protected int id;
	protected String name;
	protected String ingredients;
	protected String description;
	protected String method;
	protected String type;
	protected String serveSize;
	
	public Recipe() {
	}
	
	public Recipe(String name, String ingredients, String description, String method, String type, String serveSize) {
		super();
		this.name = name;
		this.ingredients = ingredients;
		this.description = description;
		this.method = method;
		this.type = type;
		this.serveSize = serveSize;
	}

	public Recipe(int id, String name, String ingredients, String description, String method, String type, String serveSize) {
		super();
		this.id = id;
		this.name = name;
		this.ingredients = ingredients;
		this.description = description;
		this.method = method;
		this.type = type;
		this.serveSize = serveSize;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIngredients() {
		return ingredients;
	}
	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.name = type;
	}
	public String getServeSize() {
		return serveSize;
	}
	public void setServeSize(String serveSize) {
		this.serveSize = serveSize;
	}
}
