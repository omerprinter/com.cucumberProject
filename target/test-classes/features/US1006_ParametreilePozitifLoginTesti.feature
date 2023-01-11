
Feature: US1006 Kullanici configuration dosyasindaki bilgilerle login olabilmeli
  
  Scenario: TC09 Gecerli kullanici adi ve sifre ile Pozitif Login Testi
    
    Given kullanici "qdUrl" anasayfaya gider
    Then ilk sayfa login linkine click yapar
    Then cookie varsa kabul eder
    And kullanici kutusuna "qdGecerliUsername" yazar
    And password kutusuna "qdGecerliPassword" yazar
    Then login buttonuna basar
    And basarili giris yapildigini test eder
    Then sayfayi kapatir