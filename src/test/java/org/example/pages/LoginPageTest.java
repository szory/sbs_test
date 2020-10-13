package org.example.pages;

import org.apache.commons.io.FileUtils;
import org.example.CreateUserPage;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class LoginPageTest {

    static WebDriver driver;

    @BeforeAll
    public static void setup() throws MalformedURLException {
        String url_www_test = "http://192.168.0.6:8080/";
        //String exePath = "h:\\instalki\\java\\chromedriver_win32_84\\chromedriver.exe";
        //System.setProperty("webdriver.chrome.driver", exePath);

        ChromeOptions options = new ChromeOptions();
        options.setCapability("platform", "ANY");

        //driver = new ChromeDriver(options);
        driver = new RemoteWebDriver(new URL("http://192.168.0.6:4444/wd/hub"), options);
        driver.get(url_www_test);
    }

    @AfterAll
    public static void clearSession() throws IOException {
        File scrFile = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(scrFile, new File("target/screenshot.png"));
        driver.quit();
    }

    @Test
    public void Login() {

        String compare;
        String correctEmail = "szory@o2.pl";
        String correctPassword = "123456";

        LoginPage loginPage = new LoginPage(driver);

        loginPage.setEmail(correctEmail);
        loginPage.setPassword(correctPassword);
        loginPage.clickLoginBtn();

        try {
            WebDriverWait wait = new WebDriverWait(driver, 60);
            wait.until(ExpectedConditions.elementToBeClickable(By.id("MyOfferContainer")));
            compare = loginPage.getMyOfferContainerText().trim();
        } catch (Exception ex) {
            compare = "";
        }
        assertEquals("My Offers", compare);
    }

    @Test
    public void Logout() {
        String compare;
        LoginPage loginPage = new LoginPage(driver);

        String correctEmail = "szory@o2.pl";
        String correctPassword = "123456";

        loginPage.setEmail(correctEmail);
        loginPage.setPassword(correctPassword);
        loginPage.clickLoginBtn();

        loginPage.clickMainMenuBtn();
        loginPage.clickLogoutBtn();

        try {
            WebDriverWait wait = new WebDriverWait(driver, 60);
            wait.until(ExpectedConditions.elementToBeClickable(By.xpath("//*[@id=\"login\"]/div/div/label")));
            compare = loginPage.getLoginSectionText().trim();
        } catch (Exception ex) {
            compare = "";
        }
        assertEquals("Login with E-mail and Password", compare);
    }
}