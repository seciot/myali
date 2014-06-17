.class Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;


# instance fields
.field final synthetic a:Lcom/alipay/nfc/model/CardInfo;

.field final synthetic b:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;Lcom/alipay/nfc/model/CardInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$4;->b:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    iput-object p2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$4;->a:Lcom/alipay/nfc/model/CardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$4;->a:Lcom/alipay/nfc/model/CardInfo;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "actionType"

    const-string/jumbo v2, "toCard"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "cardNo"

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$4;->a:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$4;->b:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/cardbin/CardbinManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$4;->a:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->queryCarbin(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "bankMark"

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/cardbin/Cardbin;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/cardbin/Cardbin;->getBandAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$4;->b:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v2, "20000071"

    const-string/jumbo v3, "09999988"

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

    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$4;->a()V

    return-void
.end method
