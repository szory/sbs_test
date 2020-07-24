package org.example;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class CreateUserPage {

    WebDriver driver;

    @FindBy(name="email")
    WebElement elementEmail;

    @FindBy(name="password")
    WebElement elementPassword;

    @FindBy(name="regulations")
    WebElement elementRegulations;

    @FindBy(name="CreateAccSubmit")
    WebElement elementCreateAccSubmit;

    @FindBy(id="createAccountBtn")
    WebElement elementcreateAccountBtn;

    @FindBy(id="welcomeNiuMsg")
    WebElement elementWelcomeNiuMsg;

    public CreateUserPage(WebDriver driver){
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

    public void setEmail(String email){
        elementEmail.sendKeys(email);
    }

    public void setPassword(String password){
        elementPassword.sendKeys(password);
    }

    public void setRegulations(){
        elementRegulations.click();
    }

    public void createAccSubmit(){
        elementCreateAccSubmit.click();
    }

    public void createAccountBtn(){
        elementcreateAccountBtn.click();
    }

    public String getWelcomeNiuMsg(){
        return elementWelcomeNiuMsg.getText();
    }
    //http://localhost:8080/welcomeNewUser use xPath selenium
}