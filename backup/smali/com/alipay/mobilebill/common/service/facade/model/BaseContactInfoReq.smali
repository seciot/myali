.class public Lcom/alipay/mobilebill/common/service/facade/model/BaseContactInfoReq;
.super Ljava/lang/Object;


# instance fields
.field public contactData:Lcom/alipay/mobilebill/common/service/facade/model/ContactData;

.field public contactType:Ljava/lang/String;

.field public headImg:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContactData()Lcom/alipay/mobilebill/common/service/facade/model/ContactData;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/common/service/facade/model/BaseContactInfoReq;->contactData:Lcom/alipay/mobilebill/common/service/facade/model/ContactData;

    return-object v0
.end method

.method public getContactType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/common/service/facade/model/BaseContactInfoReq;->contactType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/common/service/facade/model/BaseContactInfoReq;->headImg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/common/service/facade/model/BaseContactInfoReq;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setContactData(Lcom/alipay/mobilebill/common/service/facade/model/ContactData;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/common/service/facade/model/BaseContactInfoReq;->contactData:Lcom/alipay/mobilebill/common/service/facade/model/ContactData;

    return-void
.end method

.method public setContactType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/common/service/facade/model/BaseContactInfoReq;->contactType:Ljava/lang/String;

    return-void
.end method

.method public setHeadImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/common/service/facade/model/BaseContactInfoReq;->headImg:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/common/service/facade/model/BaseContactInfoReq;->userId:Ljava/lang/String;

    return-void
.end method
