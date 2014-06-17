.class Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$1;->a:Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$1;->a:Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "toAccount"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "account"

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$1;->a:Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;

    invoke-static {v2}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$1;->a:Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;->b(Lcom/alipay/mobile/nfc/ui/NFCBeamActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000071"

    const-string/jumbo v3, "09999988"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/NFCBeamActivity$1;->a()V

    return-void
.end method
