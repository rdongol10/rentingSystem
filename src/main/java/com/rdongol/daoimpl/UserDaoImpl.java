package com.rdongol.daoimpl;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import com.rdongol.dao.UserDao;
import com.rdongol.domain.User;

@Repository
public class UserDaoImpl implements UserDao {

	private NamedParameterJdbcTemplate namedParamJdbcTemplate;

	@Autowired
	@Override
	public void setDataSource(DataSource dataSource) {
		namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public boolean create(User user) {
		SqlParameterSource beanParams = new BeanPropertySqlParameterSource(user);

		StringBuffer query = new StringBuffer();
		query.append(
				"INSERT INTO user(login_name,password,first_name,last_name,middle_name,phone_number,email_address,sex,type_of_user)");
		query.append(
				" VALUES(:loginName, :password, :firstName, :lastName, :middleName, :phoneNumber, :emailAddress, :sex, :typeOfUser)");
		return namedParamJdbcTemplate.update(query.toString(), beanParams) == 1;

	}

	@Override
	public User getUser(Integer id) {

		SqlParameterSource params = new MapSqlParameterSource("ID", id);
		String query = "select id,login_name,password,first_name,last_name,middle_name,phone_number,email_address,sex,type_of_user from user where id = :ID";
		User user = namedParamJdbcTemplate.queryForObject(query, params, new UserRowMapper());
		return user;
	}

	@Override
	public List<User> getAllUsers() {
		String query = "Select * from user";
		List<User> users = namedParamJdbcTemplate.query(query, new UserRowMapper());
		return users;
	}

	@Override
	public boolean delete(User user) {
		SqlParameterSource beanParams = new BeanPropertySqlParameterSource(user);
		String query = "Delete from user where id = :id";

		return namedParamJdbcTemplate.update(query, beanParams) == 1;
	}

	@Override
	public boolean update(User user) {
		SqlParameterSource beanParams = new BeanPropertySqlParameterSource(user);
		String query = "Update user Set login_name:loginName, password:password, first_name:firstName, last_name:lastName, middle_name:middleName, phone_number:phoneNumber, email_address:emailAddress, sex:sex, type_of_user:typeOfUser WHERE id =:id  ";

		return namedParamJdbcTemplate.update(query, beanParams) == 1;

	}

	@Override
	public void cleanup() {
		String sqlQuery = "TRUNCATE TABLE user ";
		namedParamJdbcTemplate.getJdbcOperations().execute(sqlQuery);
	}

	public static void main(String[] args) {
		UserDaoImpl dao = new UserDaoImpl();
		User user = new User(1, "rdongol", "rhiyan", "Rabin", "Dongol", "", "9841123023", "rawbean08@gmail.cim", 1, 1);
		dao.create(user);
	}

}
