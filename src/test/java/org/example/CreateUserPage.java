package org.example;

import org.example.common.BasePage;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import java.net.MalformedURLException;

public class CreateUserPage extends BasePage {

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

    public CreateUserPage() throws MalformedURLException {
        super();
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
}