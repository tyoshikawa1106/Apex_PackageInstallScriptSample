/**
 * カスタム設定登録
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class CustomSettingInclude {
	
	/**
	 * コンストラクタ
	 */
	public CustomSettingInclude() {
		
	}
	
	/**
	 * 取引先コントロール
	 */
	public AccountCtrl__c createAccountCtrl() {
		AccountCtrl__c accountCtrl = new AccountCtrl__c(
			AccountSearchLimit__c = 200
		); 
		
		insert accountCtrl;
		
		return accountCtrl;
	}
}