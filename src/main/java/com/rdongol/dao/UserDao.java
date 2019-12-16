package com.rdongol.dao;

import java.util.List;
import javax.sql.DataSource;
import com.rdongol.domain.User;

public interface UserDao {

	// Set the data-source that will be required to create a connection to the
	// database.
	public void setDataSource(DataSource ds);

	// Create a record in the organization table
	public boolean create(User user);

	// Retrieve a single organization
	public User getUser(Integer id);

	// Retrieve all organizations from the table.
	public List<User> getAllUsers();

	// Delete a specific organization from the table.
	public boolean delete(User user);

	// Update an existing organization
	public boolean update(User user);
	
	public boolean userExists(String userName);

	public void cleanup();
}
