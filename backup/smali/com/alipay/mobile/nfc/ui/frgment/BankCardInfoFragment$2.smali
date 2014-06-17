.class Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;


# instance fields
.field final synthetic a:Lcom/alipay/nfc/model/CardInfo;

.field final synthetic b:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;Lcom/alipay/nfc/model/CardInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$2;->b:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    iput-object p2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$2;->a:Lcom/alipay/nfc/model/CardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$2;->a:Lcom/alipay/nfc/model/CardInfo;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "cardNo"

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$2;->a:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$2;->a:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "certNo"

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$2;->a:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->e()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "idcard"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "inputName"

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$2;->a:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->e()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "name"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$2;->b:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v2, "20000071"

    const-string/jumbo v3, "09999983"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$2;->a()V

    return-void
.end method
