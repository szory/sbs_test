package org.example;
import java.net.MalformedURLException;

import org.example.common.TestConfig;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.example.common.WebDriverSingleton.getInstanceWebDrv;

/*
    mvn test -Dtest=CreateUserTest#createAccount -DbrowserType=chrome -DincrementVar=0
    mvn test -Dtest=CreateUserTest#createAccount -DbrowserType=firefox -DincrementVar=0
*/

public class CreateUserTest extends TestConfig {
    static WebDriver driver;
    static String browserType=System.getProperty("browserType")==null?"chrome":System.getProperty("browserType");
    static String incrementVar=System.getProperty("incrementVar");

    String url_www_test = "http://192.168.1.102:8080/";
    public CreateUserTest() throws MalformedURLException {
        getInstanceWebDrv().get(url_www_test);
    }

    @Test
    public void createAccount() throws MalformedURLException {
        String compare = "";
        String correctEmail = "";
        String correctPassword = "";

        if (browserType.equals("chrome")){
            correctEmail = "testusershareChrome"+incrementVar+"@gmail.com";
            correctPassword = "Trus123456kawki";

        }else if(browserType.equals("firefox")){
            correctEmail = "testusershareFire"+incrementVar+"@gmail.com";
            correctPassword = "Trus123456kawki";
        }

        CreateUserPage createUserPage = new CreateUserPage();

        createUserPage.createAccountBtn();

        createUserPage.setEmail(correctEmail);
        createUserPage.setPassword(correctPassword);
        createUserPage.setRegulations();
        createUserPage.createAccSubmit();

        try {
            WebDriverWait wait = new WebDriverWait(getInstanceWebDrv(), 60);
            wait.until(ExpectedConditions.elementToBeClickable(By.id("welcomeNiuMsg")));
            compare = createUserPage.getWelcomeNiuMsg().trim();
        }catch(Exception ex){
            compare = "";
        }
        assertEquals("New account crated, confirmation e-mail sent. Open your e-mail box and finish registration by clicking confirmation link",compare);
    }
}