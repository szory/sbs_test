package org.example;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.net.MalformedURLException;
import java.net.URL;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CreateUserTest {
    static WebDriver driver;

    @BeforeAll
    public static void setup(){

        String url_www_test = "http://localhost:8080/";
        // TODO Auto-generated method stub
        //String exePath = "h:\\instalki\\java\\chromedriver_win32_85\\chromedriver.exe";
        //System.setProperty("webdriver.chrome.driver", exePath);

        try {
            //DesiredCapabilities capability = DesiredCapabilities.chrome();
            //capability.setCapability( "acceptSslCerts", true );

            ChromeOptions options = new ChromeOptions();
            options.setCapability("platform", "ANY");

            options.addArguments("--headless");
            options.addArguments("--no-sandbox");
            options.addArguments("--disable-gpu");
            options.addArguments("--remote-debugin-port=9222");
            options.addArguments("--screen-size=1200x800");

            driver = new RemoteWebDriver(new URL("http://localhost:4444/wd/hub"), options);
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
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