package org.example.pages;

import org.example.CreateUserPage;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.RemoteWebDriver;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collections;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class ShowOffersTest {
    static WebDriver driver;

    @BeforeAll
    public static void setup(){

        String url_www_test = "http://192.168.1.102:8080/showOffers?page=0&to_place=Rodos";
        // TODO Auto-generated method stub
        //String exePath = "h:\\instalki\\java\\chromedriver_win32_85\\chromedriver.exe";
        //System.setProperty("webdriver.chrome.driver", exePath);

        try {
            //DesiredCapabilities capability = DesiredCapabilities.chrome();
            //capability.setCapability( "acceptSslCerts", true );

            ChromeOptions options = new ChromeOptions();
            options.setCapability("platform", "ANY");

            //options.addArguments("headless");
            //options.addArguments("no-sandbox");
            //options.addArguments("disable-gpu");
            //options.addArguments("remote-debugin-port=9222");
            options.addArguments("screen-size=1200x800");

            driver = new RemoteWebDriver(new URL("http://192.168.1.102:4444/wd/hub"), options);
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        driver.get(url_www_test);
    }

    @AfterAll
    public static void clearSession(){
        driver.quit();
    }

    @Test
    public void checkTextExistingInTable(){
        ShowOffersPage showOffersPage = new ShowOffersPage(driver);
        List<WebElement> elements = showOffersPage.get_divOneOffer();
        WebElement text = elements.get(0).findElement(By.xpath("//*[@id=\"content\"]/div[2]/div[2]/div[1]/a/div/div[3]/div/div[1]/div[3]"));
        String dest_place = text.getText();
        assertEquals(dest_place, "Rodos");
    }
}