package org.example.pages;

import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
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

public class CreateOfferTest {

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
        //driver.quit();
    }

    @Test
    public void checkExistingOfElementOfOffer() {

        String compareReturn;
        String compareDepar;
        String correctEmail = "szory@o2.pl";
        String correctPassword = "123456";

        LoginPage loginPage = new LoginPage(driver);

        loginPage.setEmail(correctEmail);
        loginPage.setPassword(correctPassword);
        loginPage.clickLoginBtn();

        try {
            driver.get("http://192.168.0.6:8080/createOffer");
            WebDriverWait wait = new WebDriverWait(driver, 60);
            wait.until(ExpectedConditions.elementToBeClickable(By.xpath("/html/body/div[1]/div[2]/div[2]/div[1]/div")));


            CreateOfferPage createOfferPage = new CreateOfferPage(driver);
            createOfferPage.switchToAdvancedMode();
            createOfferPage.clickCheckbox();

            wait.until(ExpectedConditions.elementToBeClickable(By.xpath("//*[@id=\"advancedModePlaceDetails\"]/div[10]/label")));

            compareReturn = createOfferPage.getmeetuptimeuponarrivalReturn();
            compareDepar = createOfferPage.getmeetuptimeuponarrivalDepar();

        } catch (Exception ex) {
            compareReturn = "";
            compareDepar = "";
        }



        assertEquals("meet up time upon arrival", compareDepar);
        assertEquals("meet up time upon arrival", compareReturn);
    }
}