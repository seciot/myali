.class public Lcom/alipay/mobileinno/common/service/facade/sns/model/SNSCreateRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public acceptUser:Lcom/alipay/mobileinno/common/service/facade/sns/model/AcceptUserInfo;

.field public bizInfo:Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareBizInfo;

.field public shareUser:Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareUserInfo;

    invoke-direct {v0}, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareUserInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileinno/common/service/facade/sns/model/SNSCreateRequest;->shareUser:Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareUserInfo;

    new-instance v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/AcceptUserInfo;

    invoke-direct {v0}, Lcom/alipay/mobileinno/common/service/facade/sns/model/AcceptUserInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileinno/common/service/facade/sns/model/SNSCreateRequest;->acceptUser:Lcom/alipay/mobileinno/common/service/facade/sns/model/AcceptUserInfo;

    new-instance v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareBizInfo;

    invoke-direct {v0}, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareBizInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileinno/common/service/facade/sns/model/SNSCreateRequest;->bizInfo:Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareBizInfo;

    return-void
.end method
