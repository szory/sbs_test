package org.example.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

public class CreateOfferPage {

    WebDriver driver;

    /* Perquisites */

    @FindBy(xpath = "/html/body/div[1]/div[2]/div[2]/div[2]/form/div/input")
    private WebElement returnCheckBox;

    public void clickCheckbox() {
        returnCheckBox.click();
    }

    @FindBy(id = "advanced_mode")
    private WebElement advancedMode;

    public void switchToAdvancedMode() {
        advancedMode.click();
    }

    @FindBy(id = "basic_mode")
    private WebElement basicMode;

    public void switchToBasicMode() {
        basicMode.click();
    }

    /* Basic Offer*/

    @FindBy(name = "from_place")
    private WebElement PlaceOfDeparture;

    public void setPlaceOfDeparture(String text) {
        PlaceOfDeparture.sendKeys(text);
    }

    @FindBy(name = "to_place")
    private WebElement destination;

    public void setDestination(String text) {
        destination.sendKeys(text);
    }

    @FindBy(name = "date_go")
    private WebElement departureTime;

    public void setDepartureTime(String text) {
        departureTime.sendKeys(text);
    }

    @FindBy(name = "equipment")
    private WebElement whatIcanTake;

    public void setWhatIcanTake(String text) {
        whatIcanTake.sendKeys(text);
    }

    @FindBy(name = "priceMode")
    private WebElement priceForUsersMode;
    public void setPriceForUsersMode(String text) {
        Select ddl = new Select(priceForUsersMode);
        ddl.selectByVisibleText("price per 1 piece of equipment");
    }

    @FindBy(name = "offer_price_for_user")
    private WebElement priceForUsers;
    public void setPriceForUsers(String text) {
        priceForUsers.sendKeys(text);
    }

    @FindBy(id = "priceCurrencyId")
    private WebElement offerPriceCurrency;
    public void setOfferPriceCurrency(String text) {
        Select ddl = new Select(offerPriceCurrency);
        ddl.selectByVisibleText("Albanian lek");
    }

    /* Basic Offer with return */

    @FindBy(name = "from_place_return")
    private WebElement placeOfReturn;
    public void setPlaceOfReturn(String text) {
        placeOfReturn.sendKeys(text);
    }

    @FindBy(name = "to_place_return")
    private WebElement destinationReturn;
    public void setDestinationReturn(String text) {
        destinationReturn.sendKeys(text);
    }

    @FindBy(name = "date_back")
    private WebElement returnTime;
    public void setReturnTime(String text) {
        returnTime.sendKeys(text);
    }

    @FindBy(xpath = "/html/body/div[1]/div[2]/div[2]/div[2]/form/section[1]/div[2]/div/div/div[4]/div[10]/label")
    private WebElement meetuptimeuponarriveReturn;
    public String getmeetuptimeuponarrivalReturn() {
        return meetuptimeuponarriveReturn.getText();
    }

    @FindBy(xpath = "/html/body/div[1]/div[2]/div[2]/div[2]/form/section[1]/div[1]/div/div[4]/div[10]/label")
    private WebElement meetuptimeuponarriveDepar;
    public String getmeetuptimeuponarrivalDepar() {
        return meetuptimeuponarriveDepar.getText();
    }




    public CreateOfferPage(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }
}