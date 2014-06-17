.class public Lcom/alipay/mobilebill/biz/shared/contact/model/ContactListResp;
.super Ljava/lang/Object;


# instance fields
.field public bizResult:Lcom/alipay/mobile/framework/service/ext/BizResult;

.field public contactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/contact/model/ContactModel;",
            ">;"
        }
    .end annotation
.end field

.field public extendField:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public hasNext:Z

.field public nextPageStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactListResp;->extendField:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBizResult()Lcom/alipay/mobile/framework/service/ext/BizResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactListResp;->bizResult:Lcom/alipay/mobile/framework/service/ext/BizResult;

    return-object v0
.end method

.method public getContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/contact/model/ContactModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactListResp;->contactList:Ljava/util/List;

    return-object v0
.end method

.method public getExtendField()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactListResp;->extendField:Ljava/util/Map;

    return-object v0
.end method

.method public getNextPageStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactListResp;->nextPageStartTime:J

    return-wide v0
.end method

.method public isHasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactListResp;->hasNext:Z

    return v0
.end method

.method public setBizResult(Lcom/alipay/mobile/framework/service/ext/BizResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactListResp;->bizResult:Lcom/alipay/mobile/framework/service/ext/BizResult;

    return-void
.end method

.method public setContactList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/contact/model/ContactModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactListResp;->contactList:Ljava/util/List;

    return-void
.end method

.method public setExtendField(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactListResp;->extendField:Ljava/util/Map;

    return-void
.end method

.method public setHasNext(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactListResp;->hasNext:Z

    return-void
.end method

.method public setNextPageStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactListResp;->nextPageStartTime:J

    return-void
.end method
