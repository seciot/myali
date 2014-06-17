.class Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;

    iget-object v0, v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;

    iget-object v1, v1, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/cardbin/CardbinManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->queryCarbin(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;

    iget-object v0, v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v3, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    :try_start_0
    new-instance v3, Lcom/alipay/publiccore/client/req/OfficialQueryByInstIdReq;

    invoke-direct {v3}, Lcom/alipay/publiccore/client/req/OfficialQueryByInstIdReq;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/cardbin/Cardbin;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/cardbin/Cardbin;->getCardType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/publiccore/client/req/OfficialQueryByInstIdReq;->setCardType(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/cardbin/Cardbin;->getBandAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/publiccore/client/req/OfficialQueryByInstIdReq;->setInstId(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;->queryOfficialAccountByInstIdAndCardType(Lcom/alipay/publiccore/client/req/OfficialQueryByInstIdReq;)Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;->getResultLink()Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;

    iget-object v0, v0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;

    iget-object v1, v1, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->c(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x2bd

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method
