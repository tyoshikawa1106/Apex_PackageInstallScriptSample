/**
 * カスタム設定登録
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class CustomSettingIncludeTest {

    /**
	 * 取引先コントロール
	 */
    static testMethod void createAccountCtrlTest() {
        
        CustomSettingInclude cls = new CustomSettingInclude();
        
        Test.startTest();
        
        AccountCtrl__c accountCtrl = cls.createAccountCtrl();
        System.assertEquals(accountCtrl.AccountSearchLimit__c, 200);
        
        Test.stopTest();
    }
}