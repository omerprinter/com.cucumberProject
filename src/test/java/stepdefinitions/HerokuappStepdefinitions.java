package stepdefinitions;

import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.NoSuchElementException;
import pages.HerokuappPage;

public class HerokuappStepdefinitions {

    HerokuappPage herokuappPage=new HerokuappPage();


    @Then("Add Element butonuna basar")
    public void add_element_butonuna_basar() {
       herokuappPage.addElementButonu.click();
    }
    @Then("Delete butonu gorunur oluncaya kadar bekler")
    public void delete_butonu_gorunur_oluncaya_kadar_bekler() throws InterruptedException {
        Thread.sleep(2000);

    }
    @Then("Delete butonu gorunur oldugunu test eder")
    public void delete_butonu_gorunur_oldugunu_test_eder() {
        Assert.assertTrue(herokuappPage.deleteButonu.isDisplayed());

    }
    @Then("Delete butona basarak butonu siler")
    public void delete_butona_basarak_butonu_siler() {
        herokuappPage.deleteButonu.click();

    }
    @Then("Delete butonunun gorunmedigini test eder")
    public void delete_butonunun_gorunmedigini_test_eder() {

        int flag=3;

        //exception olusmazsa beklediğimiz durum gerceklesmedi demektir
        // bu durumda test FAILED olmalı
        //bunun için 36. satırda FAILED olacak bir assertion yazdım

        //35. satırda delete butonu görünmüyorsa exception olusur
        // bu bizim beklediğimiz durum oldugundan testin PASSED olması gerekir
        //exception olusunca onu catch ile yakaladık ve
        //41. satırda PASSED olacak bir Assetion yazdık

        try {
            herokuappPage.deleteButonu.click();
            Assert.assertFalse(flag==3);
        } catch (NoSuchElementException e) {
            Assert.assertTrue(flag==3);
        }
    }

}
