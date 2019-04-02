import com.mzq.pojo.Article;
import com.mzq.pojo.UserInfo;
import com.mzq.service.ArticleService;
import com.mzq.service.UserInfoService;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

//注解才有效果
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class Test {

    @Autowired
    UserInfoService userInfoService;

    @Autowired
    ArticleService articleService;


    @org.junit.Test
    public void getUserInfoAndArticle() {

        UserInfo userInfo = userInfoService.getUserInfoAndArticle(32);
        System.out.println(userInfo);
        //模式view展示数据
        System.out.println(userInfo.getUserName());
        //显示作者发布的所有文章
        for (Article article : userInfo.getArticleList() ){
            System.out.println(article.getArticleTitle());
        }
    }

    @org.junit.Test
    public void getArticleInfo() {

        List<Article> list = articleService.listArticlesInfo();
        for (Article article : list){
            System.out.println(article);
        }
        System.out.println("--模拟view展示数据   文章标题   发表文章的作者------");
        //模拟view展示数据 文章标题 发表的作者
        for (Article article : list){
            System.out.println(article.getArticleTitle() + " --- " + article.getArticleAuthor().getUserName());
        }
    }
}
