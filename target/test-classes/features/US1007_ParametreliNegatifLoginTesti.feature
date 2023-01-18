
Feature: US1007 Kullanici yanlis bilgilerle giris yapamaz

  Scenario: TC10 Gecerli kullanici adi ve gecersiz sifre ile negatif Login Testi

    Given kullanici "qdUrl" anasayfaya gider
    Then cookie varsa kabul eder
    Then ilk sayfa login linkine click yapar
    And kullanici kutusuna "qdGecerliUsername" yazar
    And password kutusuna "qdGecersizPassword" yazar
    Then login buttonuna basar
    And giris yapilamadigini test eder
    Then sayfayi kapatir

  Scenario: TC11 Gecersiz kullanici adi ve gecerli sifre ile negatif Login Testi

    Given kullanici "qdUrl" anasayfaya gider
    Then cookie varsa kabul eder
    Then ilk sayfa login linkine click yapar
    Then cookie varsa kabul eder
    And kullanici kutusuna "qdGecersizUsername" yazar
    And password kutusuna "qdGecerliPassword" yazar
    Then login buttonuna basar
    And giris yapilamadigini test eder
    Then sayfayi kapatir

  Scenario: TC12 Gecerli gecersiz kullanici adi ve gecersiz sifre ile negatif Login Testi

    Given kullanici "qdUrl" anasayfaya gider
    Then cookie varsa kabul eder
    Then ilk sayfa login linkine click yapar
    Then cookie varsa kabul eder
    And kullanici kutusuna "qdGecersizUsername" yazar
    And password kutusuna "qdGecersizPassword" yazar
    Then login buttonuna basar
    And giris yapilamadigini test eder
    Then sayfayi kapatir