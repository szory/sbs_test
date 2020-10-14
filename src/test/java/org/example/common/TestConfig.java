package org.example.common;

import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import static org.example.common.WebDriverSingleton.quit;
import static org.example.common.WebDriverSingleton.getInstanceWebDrv;

public class TestConfig {

    private static WebDriver driver;

    @BeforeAll
    public static void setUp() throws MalformedURLException {
        getInstanceWebDrv().manage().window().maximize();
    }

    @AfterAll
    public static void clearSession() throws IOException {
        File scrFile = ((TakesScreenshot)getInstanceWebDrv()).getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(scrFile, new File("target/screenshot.png"));
        quit();
    }
}