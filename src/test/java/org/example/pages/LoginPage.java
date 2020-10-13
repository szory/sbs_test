package org.example.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage {
    WebDriver driver;

    @FindBy(name="username")
    WebElement elementEmail;

    @FindBy(name="password")
    WebElement elementPassword;

    @FindBy(xpath = "//*[@id=\"login\"]/div/div/form/div[4]/input")
    WebElement elementLoginBtn;

    @FindBy(id="MyOfferContainer")
    WebElement elementMyOfferContainer;

    @FindBy(xpath = "/html/body/div[1]/div[1]/div/div[2]/div/div[7]/div[2]/a[7]")
    WebElement elementLogoutBtn;

    @FindBy(id="dropDownBtn")
    WebElement elementMainMenu;

    @FindBy(xpath = "//*[@id=\"login\"]/div/div/label")
    WebElement elementLoginSectionText;

    public LoginPage(WebDriver driver){
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

    public void setEmail(String email){
        elementEmail.sendKeys(email);
    }

    public void setPassword(String password){
        elementPassword.sendKeys(password);
    }

    public void clickLoginBtn(){
        elementLoginBtn.click();
    }

    public String getMyOfferContainerText(){
        return elementMyOfferContainer.getText();
    }

    public void clickLogoutBtn() {
        elementLogoutBtn.click();
    }

    public String getLoginSectionText(){
        return elementLoginSectionText.getText();
    }
    public void clickMainMenuBtn() {
       elementMainMenu.click();
    }
}