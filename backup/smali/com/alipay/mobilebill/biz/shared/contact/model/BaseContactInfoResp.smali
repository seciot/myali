.class public Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;
.super Lcom/alipay/mobilebill/biz/shared/contact/model/ContactTemplate;


# instance fields
.field public contactType:Ljava/lang/String;

.field public extInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public myHeadImg:Ljava/lang/String;

.field public oppositeDesc:Ljava/lang/String;

.field public oppositeName:Ljava/lang/String;

.field public result:Lcom/alipay/mobile/framework/service/ext/BizResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactTemplate;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;->extInfo:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getContactType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;->contactType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;->extInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getMyHeadImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;->myHeadImg:Ljava/lang/String;

    return-object v0
.end method

.method public getOppositeDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;->oppositeDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getOppositeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;->oppositeName:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/alipay/mobile/framework/service/ext/BizResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;->result:Lcom/alipay/mobile/framework/service/ext/BizResult;

    return-object v0
.end method

.method public setContactType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;->contactType:Ljava/lang/String;

    return-void
.end method

.method public setExtInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;->extInfo:Ljava/util/Map;

    return-void
.end method

.method public setMyHeadImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;->myHeadImg:Ljava/lang/String;

    return-void
.end method

.method public setOppositeDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;->oppositeDesc:Ljava/lang/String;

    return-void
.end method

.method public setOppositeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;->oppositeName:Ljava/lang/String;

    return-void
.end method

.method public setResult(Lcom/alipay/mobile/framework/service/ext/BizResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;->result:Lcom/alipay/mobile/framework/service/ext/BizResult;

    return-void
.end method
