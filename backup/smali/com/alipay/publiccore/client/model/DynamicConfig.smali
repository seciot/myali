.class public Lcom/alipay/publiccore/client/model/DynamicConfig;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;


# instance fields
.field private addPublicPageWelcomeMsg:Ljava/lang/String;

.field private dynamicConfigUid:Ljava/lang/String;

.field private mapiPayUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private taobaoBatchPayUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private taobaoPayUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private thirdPayUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddPublicPageWelcomeMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->addPublicPageWelcomeMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicConfigUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->dynamicConfigUid:Ljava/lang/String;

    return-object v0
.end method

.method public getMapiPayUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->mapiPayUrls:Ljava/util/List;

    return-object v0
.end method

.method public getTaobaoBatchPayUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->taobaoBatchPayUrls:Ljava/util/List;

    return-object v0
.end method

.method public getTaobaoPayUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->taobaoPayUrls:Ljava/util/List;

    return-object v0
.end method

.method public getThirdPayUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->thirdPayUrls:Ljava/util/List;

    return-object v0
.end method

.method public setAddPublicPageWelcomeMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->addPublicPageWelcomeMsg:Ljava/lang/String;

    return-void
.end method

.method public setDynamicConfigUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->dynamicConfigUid:Ljava/lang/String;

    return-void
.end method

.method public setMapiPayUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->mapiPayUrls:Ljava/util/List;

    return-void
.end method

.method public setTaobaoBatchPayUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->taobaoBatchPayUrls:Ljava/util/List;

    return-void
.end method

.method public setTaobaoPayUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->taobaoPayUrls:Ljava/util/List;

    return-void
.end method

.method public setThirdPayUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/DynamicConfig;->thirdPayUrls:Ljava/util/List;

    return-void
.end method
