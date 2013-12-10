/**
 * パッケージインストールスクリプト
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest(onInstall=false)
private class PostInstallClassTest {

	/**
	 * パッケージインストールスクリプト
	 */
	static testMethod void onInstallTest() {
		
		Test.startTest();
		
		PostInstallClass postinstall = new PostInstallClass();
		Test.testInstall(postinstall, null);
		
		Test.stopTest();
		
		AccountCtrl__c a = [SELECT Id, AccountSearchLimit__c from AccountCtrl__c LIMIT 1];
		System.assertEquals(a.AccountSearchLimit__c, 200);
	}
}