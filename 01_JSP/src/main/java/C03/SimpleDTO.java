package C03;

public class SimpleDTO {
	private String name;
	private int age;
	private String addr;
	
	@Override
	public String toString() {
		return "SimpleDTO [name=" + name + ", age=" + age + ", addr=" + addr + "]";
	}
	
	public SimpleDTO(String name, int age, String addr) {
		super();
		this.name = name;
		this.age = age;
		this.addr = addr;
	}
	
	public SimpleDTO() {}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
}
