package model;

public class Employee {
	int empId;
	String firstName, lastName, middleName, birthday, address, contactNo, email;
	int deptNo;
	String jobTitle;
	
	public Employee(int empId, String firstName, String lastName, String middleName, String birthday, String address,
			String contactNo, String email, int deptNo, String jobTitle) {
		super();
		this.empId = empId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.middleName = middleName;
		this.birthday = birthday;
		this.address = address;
		this.contactNo = contactNo;
		this.email = email;
		this.deptNo = deptNo;
		this.jobTitle = jobTitle;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getDeptNo() {
		return deptNo;
	}

	public void setDeptNo(int deptNo) {
		this.deptNo = deptNo;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	
	

}
