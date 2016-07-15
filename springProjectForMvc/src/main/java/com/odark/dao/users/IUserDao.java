package com.odark.dao.users;

import com.odark.domain.users.User;

public interface IUserDao {

	User findById(String userId);

	void create(User user);

	void update(User user);

}