import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.gl.registration.entity.Student;
import com.gl.registration.service.StudentService;
import com.gl.registration.service.StudentServiceImpl;

public class StudentMain {

	public static void main(String[] args) {
		Configuration con = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Student.class);
		SessionFactory sessionFactory = con.buildSessionFactory();
		StudentService studentService = new StudentServiceImpl(sessionFactory);
		List<Student> StudentList = studentService.findAll();
		for (Student student : StudentList) {
			System.out.println(student.toString());
		}
	}
}