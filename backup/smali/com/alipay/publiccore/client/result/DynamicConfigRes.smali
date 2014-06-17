.class public Lcom/alipay/publiccore/client/result/DynamicConfigRes;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;


# instance fields
.field public dynamicConfig:Lcom/alipay/publiccore/client/model/DynamicConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getDynamicConfig()Lcom/alipay/publiccore/client/model/DynamicConfig;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/DynamicConfigRes;->dynamicConfig:Lcom/alipay/publiccore/client/model/DynamicConfig;

    return-object v0
.end method

.method public setDynamicConfig(Lcom/alipay/publiccore/client/model/DynamicConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/DynamicConfigRes;->dynamicConfig:Lcom/alipay/publiccore/client/model/DynamicConfig;

    return-void
.end method
