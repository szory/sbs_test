package org.example.common;

import org.openqa.selenium.support.PageFactory;

import java.net.MalformedURLException;
import static org.example.common.WebDriverSingleton.getInstanceWebDrv;

public class BasePage {

    public BasePage() throws MalformedURLException {
        PageFactory.initElements(getInstanceWebDrv(),this);
    }
}
