package com.studentmanage;

import com.alibaba.druid.pool.DruidDataSource;
import com.studentmanage.service.SignInAndOutService;
import org.apache.log4j.Logger;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;


@Controller
@SpringBootApplication
@MapperScan("com.studentmanage.dao.mapper")

public class StudentmanageApplication {
    private static Logger logger = Logger.getLogger(String.valueOf(StudentmanageApplication.class));

    @Bean
    SpringBootConfiguration springBootConfiguration(){

        return springBootConfiguration();
    }

    public static void main(String[] args) {
        SpringApplication.run(StudentmanageApplication.class, args);
        logger.info("============= SpringBoot Start Success =============");
    }

    @RequestMapping("/")
    String home() {
        return "loginIndex";
    }
}
