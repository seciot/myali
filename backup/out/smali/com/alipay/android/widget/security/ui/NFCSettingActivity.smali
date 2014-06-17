.class public Lcom/alipay/android/widget/security/ui/NFCSettingActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "nfc_setting"
.end annotation


# instance fields
.field a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "nfc"
    .end annotation
.end field

.field b:Lcom/alipay/mobile/framework/service/NFCService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getmToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->b:Lcom/alipay/mobile/framework/service/NFCService;

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/framework/service/NFCService;->isAlipayNfcEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setChecked(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->b:Lcom/alipay/mobile/framework/service/NFCService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/NFCService;->isNfcEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->b:Lcom/alipay/mobile/framework/service/NFCService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/NFCService;->enableAlipayNfc(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->a()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->a()V

    return-void
.end method
