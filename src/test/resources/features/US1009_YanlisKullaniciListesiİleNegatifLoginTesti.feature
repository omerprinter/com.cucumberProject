Feature: US1009 Yanlis kullanici adi ve password listesi ile negatif login testi

  Scenario Outline: : TC14 yanlis kullanici listesi ile amazonda arama yapılamamali

    Given kullanici "qdUrl" anasayfaya gider
    And cookie varsa kabul eder
    Then ilk sayfa login linkine click yapar
    And kullanici kutusuna manuel olarak "<yanlisUsername>" yazar
    And password kutusuna manuel olarak "<yanlisPassword>" yazar
    And 3 saniye bekler
    And login buttonuna basar
    And giris yapilamadigini test eder
    Then sayfayi kapatir

    Examples:
    |yanlisUsername|yanlisPassword|
    |ilker         |ilker@a.com   |
    |mehmet        |mehmet@b.com  |
    |yasar         |yasar@c.com   |
    |adem          | adem@d.com   |
    |ozgur         |ozgur@c.com   |