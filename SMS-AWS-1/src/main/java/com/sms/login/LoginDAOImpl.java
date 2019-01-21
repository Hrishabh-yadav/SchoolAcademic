package com.sms.login;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.sms.beans.Login;

public interface LoginDAOImpl extends JpaRepository<Login,Integer>{

	@Query(value = "SELECT email_id from login where email_id=?1", nativeQuery = true)
	String checkEmailId(String emailId);
	
	@Query(value = "SELECT mobile_number from login where mobile_number=?1", nativeQuery = true)
	String checkMobileNumber(String mobileNumber);

	@Query(value = "SELECT * from login where email_id=?1 and mobile_number=?2", nativeQuery = true)
	Login checkEmailIdMobileNumber(String emailId2, String mobileNumber2);

	@Query(value = "select * from login\r\n" + 
			"where \r\n" + 
			"(login.email_id=?1 and login.password=?2)\r\n" + 
			"OR\r\n" + 
			"(login.mobile_number=?1 and login.password=?2)\r\n" + 
			"OR\r\n" + 
			"(login.username=?1 and login.password=?2)", nativeQuery = true)
	Login login(String username, String password);

}
