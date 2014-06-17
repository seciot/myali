.class Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;

    iget-object v0, v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "cardFullNo"

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "actionType"

    const-string/jumbo v3, "repayment"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/helper/CCDCHelper;->getCardIndex(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "cardNumber"

    const-string/jumbo v4, "key"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "cardNumberType"

    const-string/jumbo v3, "INDEX"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "autoAdd"

    const-string/jumbo v3, "TRUE"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;

    iget-object v2, v2, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v2}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/cardbin/CardbinManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->queryCarbin(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "bankMark"

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/cardbin/Cardbin;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/cardbin/Cardbin;->getBandAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;

    iget-object v0, v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v2, "20000071"

    const-string/jumbo v3, "09999999"

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
