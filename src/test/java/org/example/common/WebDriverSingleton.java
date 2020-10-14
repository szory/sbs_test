package org.example.common;

import org.openqa.selenium.MutableCapabilities;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.RemoteWebDriver;

import java.net.MalformedURLException;
import java.net.URL;

public class WebDriverSingleton {

    private static WebDriver driver;

    private WebDriverSingleton(){};

    public static WebDriver getInstanceWebDrv() throws MalformedURLException {
        if (driver==null){
            MutableCapabilities options = null;
            ChromeOptions optionsCh = new ChromeOptions();
            options = optionsCh;
            options.setCapability("platform", "ANY");
            driver = new RemoteWebDriver(new URL("http://192.168.1.102:4444/wd/hub"), options);
        }
        return driver;
    }

    public static void quit(){
        if (driver !=null){
            driver.quit();
        }
        driver = null;
    }
}