package com.gog;

import javax.sql.DataSource;

import com.gog.dao.GenericCoherenceDao;
import com.gog.store.EmployeeStore;
import com.tangosol.net.CacheFactory;
import org.springframework.beans.factory.config.MethodInvokingFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.gog.dao.EmployeeDao;

@Configuration
public class ApplicationConfig {
	
	@Bean
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.h2.Driver");
        dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
        dataSource.setUsername("sa");
        dataSource.setPassword("");
        return dataSource;
    }
	
	@Bean
	public NamedParameterJdbcTemplate namedParamJdbcTemplate(DataSource dataSource) {
		return new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Bean
	public EmployeeDao employeeDao(NamedParameterJdbcTemplate namedParamJdbcTemplate) {
		EmployeeDao dao = new EmployeeDao();
		dao.setNamedParamJdbcTemplate(namedParamJdbcTemplate);
		return dao;
	}

	@Bean
	@Scope("prototype")
	public GenericCoherenceDao coherenceDao() {
		GenericCoherenceDao dao = new GenericCoherenceDao();
		dao.setCacheName("employee");
		return dao;
	}

	@Bean
	@Scope("prototype")
	public EmployeeStore employeeCacheStore(NamedParameterJdbcTemplate namedParamJdbcTemplate) {
		EmployeeStore empCacheStore = new EmployeeStore("employee");
		empCacheStore.setNamedParamJdbcTemplate(namedParamJdbcTemplate);
		return empCacheStore;
	}

	@Bean
	public SpringAwareCacheFactory cacheFactory() {
		return new SpringAwareCacheFactory();
	}

	@Bean
	public MethodInvokingFactoryBean methodInvokingFactoryBean(SpringAwareCacheFactory cacheFactory) {
		MethodInvokingFactoryBean mifb = new MethodInvokingFactoryBean();
		mifb.setTargetClass(CacheFactory.class);
		mifb.setTargetMethod("setConfigurableCacheFactory");
		mifb.setArguments(cacheFactory);
		return mifb;
	}

}
