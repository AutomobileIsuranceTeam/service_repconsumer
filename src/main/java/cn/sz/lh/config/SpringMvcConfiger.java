package cn.sz.lh.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
public class SpringMvcConfiger {

	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver =new InternalResourceViewResolver();
		viewResolver.setPrefix("/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	
/*	@Bean
	public MapperScannerConfigurer scannerConfigur() {
		MapperScannerConfigurer conf=new MapperScannerConfigurer();
		conf.setSqlSessionFactoryBeanName("sqlSessionFactory");
		conf.setBasePackage("cn.sz.lh.dao");
		return conf;
	}*/
	
	
}
