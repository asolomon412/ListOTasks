package co.grandcircus.HibernateDemo109.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.HibernateDemo109.model.UserInfo;

public interface UserRepository extends JpaRepository<UserInfo, Integer> {

	UserInfo findByEmail(String email);

}	
