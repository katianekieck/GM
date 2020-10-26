// Generated by Selenium IDE
import org.junit.Test;
import org.junit.Before;
import org.junit.After;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.core.IsNot.not;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Alert;
import org.openqa.selenium.Keys;
import java.util.*;
import java.net.MalformedURLException;
import java.net.URL;
public class GMValidaesEstoqueTest {
  private WebDriver driver;
  private Map<String, Object> vars;
  JavascriptExecutor js;
  @Before
  public void setUp() throws MalformedURLException {
    driver = new RemoteWebDriver(new URL("http://localhost:4444/wd/hub"), DesiredCapabilities.chrome());
    js = (JavascriptExecutor) driver;
    vars = new HashMap<String, Object>();
  }
  @After
  public void tearDown() {
    driver.quit();
  }
  @Test
  public void gMValidaesEstoque() {
    driver.get("https://www.webmotors.com.br/carros/estoque?tipoveiculo=carros&estadocidade=estoque");
    driver.findElement(By.id("searchBar")).click();
    driver.findElement(By.id("searchBar")).sendKeys("honda");
    driver.findElement(By.cssSelector(".SearchBar__results__group:nth-child(1) .SearchBar__results__result__name")).click();
    driver.findElement(By.cssSelector(".Filters__line--gray")).click();
    driver.findElement(By.linkText("CITY")).click();
    driver.findElement(By.cssSelector(".Filters__line--gray")).click();
    driver.findElement(By.linkText("1.5 DX 16V FLEX 4P AUTOMÁTICO")).click();
    driver.findElement(By.cssSelector(".title-search")).click();
    {
      WebDriverWait wait = new WebDriverWait(driver, 30);
      wait.until(ExpectedConditions.textToBe(By.xpath("//div[@id=\'root\']/main/div/div[3]/h1"), "Honda City 1.5 Dx 16v Flex 4p Automático Novos e Usados"));
    }
  }
}
