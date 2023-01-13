
Feature: US1012 Kullanici herokuapp sayfasinda butonlarin gorunur oldugunu test eder

  Scenario: TC16 kullanici bekleyerek butonlarin gorunur olmasini saglamali

    Given kullanici "herokuappUrl" anasayfaya gider
    Then Add Element butonuna basar
    And Delete butonu gorunur oluncaya kadar bekler
    And Delete butonu gorunur oldugunu test eder
    And Delete butona basarak butonu siler
    Then Delete butonunun gorunmedigini test eder
    And sayfayi kapatir



