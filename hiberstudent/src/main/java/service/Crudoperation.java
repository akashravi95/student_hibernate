

	package service;

	import java.util.List;

	import org.hibernate.Session;
	import org.hibernate.SessionFactory;
	import org.hibernate.Transaction;
	import org.hibernate.boot.Metadata;
	import org.hibernate.boot.MetadataSources;
	import org.hibernate.boot.registry.StandardServiceRegistry;
	import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
	import org.hibernate.query.Query;

	import model.Students;

	public class Crudoperation {
	    private static SessionFactory sessionFactory;

	    static {
	        try {
	            StandardServiceRegistry ssr = new StandardServiceRegistryBuilder()
	                    .configure("service/Hibernate.cfg.xml")
	                    .build();
	            Metadata metadata = new MetadataSources(ssr)
	                    .getMetadataBuilder()
	                    .build();
	            sessionFactory = metadata.getSessionFactoryBuilder().build();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

	    public static int save(Students stud) {
	        int status = 0;
	        Transaction transaction = null;
	        try (Session session = sessionFactory.openSession()) {
	            transaction = session.beginTransaction();
	            session.save(stud);
	            transaction.commit();
	            status = 1;
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	        return status;
	    }

	    public static List<Students> getAllStudents() {
	        List<Students> studentsList = null;
	        try (Session session = sessionFactory.openSession()) {
	            Query<Students> query = session.createQuery("FROM Students", Students.class);
	            studentsList = query.getResultList();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return studentsList;
	    }

	    public static int login(String username, String password) {
	        int userId = -1;
	        try (Session session = sessionFactory.openSession()) {
	            Query<Integer> query = session.createQuery(
	                    "SELECT id FROM Students WHERE username = :username AND password = :password",
	                    Integer.class
	            );
	            query.setParameter("username", username);
	            query.setParameter("password", password);
	            Integer result = query.uniqueResult();
	            if (result != null) {
	                userId = result;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return userId;
	    }

	    public static Students getUserInfo(int userId) {
	        Students user = null;
	        try (Session session = sessionFactory.openSession()) {
	            user = session.get(Students.class, userId);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return user;
	    }

	    public static int editUser(Students stud) {
	        int status = 0;
	        Transaction transaction = null;
	        try (Session session = sessionFactory.openSession()) {
	            transaction = session.beginTransaction();
	            session.update(stud);
	            transaction.commit();
	            status = 1;
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	        return status;
	    }

	    public static int deleteUser(int userId) {
	        int status = 0;
	        Transaction transaction = null;
	        try (Session session = sessionFactory.openSession()) {
	            transaction = session.beginTransaction();
	            Students stud = session.get(Students.class, userId);
	            if (stud != null) {
	                session.delete(stud);
	                transaction.commit();
	                status = 1;
	            }
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	        return status;
	    }
	}
