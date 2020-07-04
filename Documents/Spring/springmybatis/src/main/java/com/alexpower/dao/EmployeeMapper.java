package com.alexpower.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.alexpower.entity.Employee;
import com.alexpower.util.MyBatisUtil;

@Repository
public class EmployeeMapper {

	public List<Employee> getAllEmployees(){
		
		SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
		
		List<Employee> employeeList = sqlSession.selectList("getAllEmployees");
		
		sqlSession.commit();
		
		sqlSession.close();
		
		return employeeList;
		
	}
	
	
	public Employee selectEmp(int id) {
		SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
		
		Employee  employee =  sqlSession.selectOne("getSingleEmployee", id);
		
		sqlSession.commit();
		
		sqlSession.close();
		
		return employee;
	}
	
	public void insertEmp(Employee employee) {
		
		
		SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
		
		sqlSession.insert("insertEmployee", employee);
		
		sqlSession.commit();
		
		sqlSession.close();
		
	}
	
	public void updateEmp (Employee employee) {
		 SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
		 sqlSession.update("updateEmployee", employee);
		 sqlSession.commit();
		 sqlSession.close();
	}
	
	
	public void deleteEmp(int id) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		
		session.delete("deleteEmployee", id);
		
		session.commit();
		session.close();
	
		
	}

}


