package org.example.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.internal.FindsByClassName;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

public class ShowOffersPage {
    WebDriver driver;

    public List<WebElement> get_divOneOffer(){
        return driver.findElements(By.className("divOneOffer"));
    }

    public ShowOffersPage(WebDriver driver){
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }
}
