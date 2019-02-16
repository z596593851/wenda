package com.hxm.wenda;

import com.hxm.wenda.dao.QuestionDAO;
import com.hxm.wenda.dao.UserDAO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class InitDatabaseTest {
    @Autowired
    UserDAO userDAO;

    @Autowired
    QuestionDAO questionDAO;

    @Test
    public void contextLoads() {
        System.out.println(questionDAO.selectLatestQuestions(0,0,10));
//        Random random = new Random();
//        for (int i = 0; i < 11; i++) {
//            User user = new User();
//
//            user.setHeadUrl(String.format("http://images.nowcoder.com/head/%dt.png", random.nextInt(999)));
//            user.setName(String.format("USER%d", i));
//            user.setPassword("");
//            user.setSalt("");
//            userDAO.addUser(user);
//
//            user.setPassword("newpassword");
//            userDAO.updatePassword(user);
//
//            Question question = new Question();
//            question.setCommentCount(i);
//            Date date = new Date();
//            date.setTime(date.getTime() + 1000 * 3600 * 5 * i);
//            question.setCreatedDate(date);
//            question.setUserId(i + 1);
//            question.setTitle(String.format("TITLE{%d}", i));
//            question.setContent(String.format("Balaababalalalal Content %d", i));
//            questionDAO.addQuestion(question);
//        }

    }

}
