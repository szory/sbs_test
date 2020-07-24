package org.example;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CreateUserTest {
    static WebDriver driver;

    @BeforeAll
    public static void setup(){

        String url_www_test = "http://localhost:8080/";
        // TODO Auto-generated method stub
        String exePath = "H:\\instalki\\java\\chromedriver_win32_84\\chromedriver.exe";
        System.setProperty("webdriver.chrome.driver", exePath);
        driver = new ChromeDriver();
        driver.get(url_www_test);
    }

    @Test
    public void createAccount(){
        String compare = "";
        String correctEmail = "testusershare1@gmail.com";
        String correctPassword = "Trus123456kawki";

        CreateUserPage createUserPage = new CreateUserPage(driver);

        createUserPage.createAccountBtn();

        createUserPage.setEmail(correctEmail);
        createUserPage.setPassword(correctPassword);
        createUserPage.setRegulations();
        createUserPage.createAccSubmit();

        try {
            WebDriverWait wait = new WebDriverWait(driver, 60);
            wait.until(ExpectedConditions.elementToBeClickable(By.id("welcomeNiuMsg")));
            compare = createUserPage.getWelcomeNiuMsg().trim();
        }catch(Exception ex){
            compare = "";
        }
        assertEquals(compare, "New account crated, confirmation e-mail sent. Open your e-mail box and finish registration by clicking confirmation link");
    }
}