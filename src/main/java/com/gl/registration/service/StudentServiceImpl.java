package com.gl.registration.service;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.gl.registration.entity.Student;

@Repository
public class StudentServiceImpl implements StudentService {

	private SessionFactory sessionFactory;

	private Session session;

	public StudentServiceImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		this.session = sessionFactory.openSession();
	}

	@Transactional
	public List<Student> findAll() {
		Transaction tx = session.beginTransaction();
		List<Student> students = session.createQuery("from Student", Student.class).list();
		tx.commit();
		return students;
	}

	@Transactional
	public Student findById(int id) {
		Student student = session.get(Student.class, id);
		return student;
	}

	@Transactional
	public void save(Student theStudent) {
		session.saveOrUpdate(theStudent);
	}

	@Transactional
	public void deleteById(int theId) {
		Student student = session.get(Student.class, theId);
		session.delete(student);
	}

}
