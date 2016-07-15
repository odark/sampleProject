package com.odark.support;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.odark.dao.users.IUserDao;
import com.odark.domain.users.User;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/applicationContext.xml")
public class ApplicationUserDaoTest {
	private static final Logger log = LoggerFactory.getLogger(ApplicationUserDaoTest.class);
	
	@Autowired
	private IUserDao userDao;

	@Test
	public void findById() {
		User user = userDao.findById("odark");
		log.debug("User : {}",user);
	}

}
