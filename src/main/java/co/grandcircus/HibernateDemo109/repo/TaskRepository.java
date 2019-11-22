package co.grandcircus.HibernateDemo109.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.HibernateDemo109.model.Task;

public interface TaskRepository extends JpaRepository<Task, Integer> {
	
	

}
