.class Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ToggleButton;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/NFCSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/NFCSettingActivity;Landroid/widget/ToggleButton;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;->b:Lcom/alipay/android/widget/security/ui/NFCSettingActivity;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;->a:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;->b:Lcom/alipay/android/widget/security/ui/NFCSettingActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->b:Lcom/alipay/mobile/framework/service/NFCService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;->b:Lcom/alipay/android/widget/security/ui/NFCSettingActivity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/NFCService;->isNfcEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;->b:Lcom/alipay/android/widget/security/ui/NFCSettingActivity;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "\u8bf7\u5148\u5728\u7cfb\u7edf\u8bbe\u7f6e\u5f00\u542f\u624b\u673aNFC\u529f\u80fd"

    const-string/jumbo v3, "\u8bbe\u7f6e"

    new-instance v4, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1$1;-><init>(Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;)V

    const-string/jumbo v5, "\u53d6\u6d88"

    new-instance v6, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1$2;

    invoke-direct {v6, p0}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1$2;-><init>(Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;)V

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;->b:Lcom/alipay/android/widget/security/ui/NFCSettingActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->b:Lcom/alipay/mobile/framework/service/NFCService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;->b:Lcom/alipay/android/widget/security/ui/NFCSettingActivity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/NFCService;->enableAlipayNfc(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;->b:Lcom/alipay/android/widget/security/ui/NFCSettingActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->b:Lcom/alipay/mobile/framework/service/NFCService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;->b:Lcom/alipay/android/widget/security/ui/NFCSettingActivity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/NFCService;->disableAlipayNfc(Landroid/content/Context;)V

    goto :goto_0
.end method
