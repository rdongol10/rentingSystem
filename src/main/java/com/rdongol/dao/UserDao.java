package com.rdongol.dao;

import java.util.List;
import javax.sql.DataSource;
import com.rdongol.domain.User;

public interface UserDao {

	// Set the data-source that will be required to create a connection to the
	// database.
	public void setDataSource(DataSource ds);

	// Create a record in the organization table
	public boolean create(User org);

	// Retrieve a single organization
	public User getUser(Integer id);

	// Retrieve all organizations from the table.
	public List<User> getAllOrUser();

	// Delete a specific organization from the table.
	public boolean delete(User org);

	// Update an existing organization
	public boolean update(User org);

	public void cleanup();
}
