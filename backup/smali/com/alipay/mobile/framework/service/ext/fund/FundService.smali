.class public abstract Lcom/alipay/mobile/framework/service/ext/fund/FundService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkFundOpenInfo(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/content/ContextWrapper;Ljava/lang/Runnable;ZLjava/lang/Runnable;)V
.end method

.method public abstract createFundAccount(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/fund/CreateFundCallback;)V
.end method

.method public abstract goFundIndexPage(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
.end method

.method public abstract goFundRealIndexPage(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
.end method

.method public abstract transferFund(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/fund/TransferFundCallback;)V
.end method
