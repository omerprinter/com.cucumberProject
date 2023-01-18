Feature: US1014 Auromation exercise sitesinde kullanici olusturma
  @wip
  Scenario: TC19 Kullanici Auromation exercise sayfasinda kullanici olusturabilmneli


    Given kullanici "automationUrl" anasayfaya gider
    And user sign in linkine tiklar
    And user Create and account bolumune email adresi girer
    And Create an Account butonuna basar
    And user kisisel bilgilerini ve iletisim bilgilerini girer
    And user Register butonuna basar
    Then hesap olustugunu dogrulayin