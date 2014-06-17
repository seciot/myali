.class public Lcom/alipay/mobile/withdraw/app/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    const-string/jumbo v0, "WithdrawApp"

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/app/MetaInfo;->entry:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const-string/jumbo v1, "WithdrawApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    const-string/jumbo v1, "com.alipay.mobile.withdraw.app.WithdrawApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    const-string/jumbo v1, "20000033"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/app/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
