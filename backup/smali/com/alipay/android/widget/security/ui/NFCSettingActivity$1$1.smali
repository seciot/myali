.class Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1$1;->a:Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1$1;->a:Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;->b:Lcom/alipay/android/widget/security/ui/NFCSettingActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.NFC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1$1;->a:Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;->b:Lcom/alipay/android/widget/security/ui/NFCSettingActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
