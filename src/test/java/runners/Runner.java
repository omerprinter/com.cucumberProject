package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin={"html:target/cucumber-reports1.html",
                "json:target/json-reports/cucumber1.json",
                "junit:target/xml-report/cucumber1.xml"
        },
        features = "src/test/resources/features",
        glue = "stepdefinitions" ,
        tags = "@smoke" ,
        dryRun = false
)

public class Runner {

    /*
       cucumber da runner classi bos bir classdir
       runner classini diger classlardan farkli kilan ve testNG deki xml dosyalari
       gibi calismasini saglayan 2 adet notasyon mevcuttur

       @RunWith notasyonu projemize cucumber junit dependency eklememizin sebebidir
       bu sayede runner class larimiz cucumber ile calisir.

       @CucumberOptions  notasyonu ile istedigimiz ozellikleri runner class ina ekleyebiliriz
       Raporlama gibi ekstra option lari da ileride ekleyecegiz.
       Ancak
       oncelikli gorevi features dosyalari ile stepdefinitions da bulunan java methodlarini ilisiklendirmektir.

       tags  : features klasoru icerisinde yazilan tag(lari) aratip
       buldugu tum feature veya senaryolari calistirir.

       dryRun  : iki deger alabilir
       true--> secilirse, verilen tag ile isaretli olan feature veya senaryodaki
                eksik stepdefinitions lari bulup ilgili methodlari olusturur.
                hicbir sekilde testimizi calistirmaz.
                eksik adim yoksa test passed olarak isaretler.

       false  :  secilirse ,verilen tag ile isaretlenen
                 feature veya Scenario lari calistirir
        */


}
