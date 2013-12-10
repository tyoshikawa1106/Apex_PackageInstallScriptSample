/**
 * パッケージインストールスクリプト
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
global class PostInstallClass implements InstallHandler {
    
    /**
     * パッケージインストールスクリプト
     */
    global void onInstall(InstallContext context) {
        
        // カスタム設定：取引先コントロールの登録
        CustomSettingInclude cls = new CustomSettingInclude();
        AccountCtrl__c accountCtrl = cls.createAccountCtrl();
    }
}