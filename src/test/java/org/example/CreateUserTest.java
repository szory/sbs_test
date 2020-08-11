package org.example;

import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import ru.yandex.qatools.ashot.Screenshot;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

import static org.junit.jupiter.api.Assertions.assertEquals;
/*
    mvn test -Dtest=CreateUserTest#createAccount -DbrowserType=chrome
    mvn test -Dtest=CreateUserTest#createAccount -DbrowserType=firefox
 */
public class CreateUserTest {
    static WebDriver driver;
    static String browserType=System.getProperty("browserType");

    @BeforeAll
    public static void setup(){

        String url_www_test = "http://192.168.1.102:8080/";
        // TODO Auto-generated method stub
        //String exePath = "h:\\instalki\\java\\chromedriver_win32_85\\chromedriver.exe";
        //System.setProperty("webdriver.chrome.driver", exePath);

        try {
            //DesiredCapabilities capability = DesiredCapabilities.chrome();
            //capability.setCapability( "acceptSslCerts", true );
            MutableCapabilities options = null;
            if (browserType.equals("chrome")){
                ChromeOptions optionsCh = new ChromeOptions();
                optionsCh.addArguments("headless");
                //options.addArguments("no-sandbox");
                //options.addArguments("disable-gpu");
                //options.addArguments("remote-debugin-port=9222");
                optionsCh.addArguments("screen-size=1200x800");
                options = optionsCh;
            }else if(browserType.equals("firefox")){
                FirefoxOptions optionsF = new FirefoxOptions();
                optionsF.addArguments("headless");
                //options.addArguments("no-sandbox");
                //options.addArguments("disable-gpu");
                //options.addArguments("remote-debugin-port=9222");
                optionsF.addArguments("screen-size=1200x800");
                options = optionsF;
            }
            options.setCapability("platform", "ANY");
            driver = new RemoteWebDriver(new URL("http://192.168.1.102:4444/wd/hub"), options);
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        driver.get(url_www_test);
    }

    @AfterAll
    public static void clearSession() throws IOException {
        File scrFile = ((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(scrFile, new File("target/screenshot.png"));
        driver.quit();
    }

    @Test
    public void createAccount(){
        String compare = "";
        String correctEmail = "";
        String correctPassword = "";

        if (browserType.equals("chrome")){
            correctEmail = "testusershareChrome@gmail.com";
            correctPassword = "Trus123456kawki";

        }else if(browserType.equals("firefox")){
            correctEmail = "testusershareFire@gmail.com";
            correctPassword = "Trus123456kawki";
        }

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
        assertEquals("New account crated, confirmation e-mail sent. Open your e-mail box and finish registration by clicking confirmation link",compare);
    }
}