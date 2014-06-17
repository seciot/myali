.class public Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;
.super Ljava/lang/Object;


# instance fields
.field public bizStateDesc:Ljava/lang/String;

.field public consumeFee:Ljava/lang/String;

.field public consumeTitle:Ljava/lang/String;

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

.field public gmtCreateDesc:Ljava/lang/String;

.field public inOut:Ljava/lang/String;

.field public logo:Ljava/lang/String;

.field public voiceMemoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->inOut:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->extInfo:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBizStateDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->bizStateDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeFee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->consumeFee:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->consumeTitle:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->extInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getGmtCreateDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->gmtCreateDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getInOut()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->inOut:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMemoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->voiceMemoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBizStateDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->bizStateDesc:Ljava/lang/String;

    return-void
.end method

.method public setConsumeFee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->consumeFee:Ljava/lang/String;

    return-void
.end method

.method public setConsumeTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->consumeTitle:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->extInfo:Ljava/util/Map;

    return-void
.end method

.method public setGmtCreateDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->gmtCreateDesc:Ljava/lang/String;

    return-void
.end method

.method public setInOut(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->inOut:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->logo:Ljava/lang/String;

    return-void
.end method

.method public setVoiceMemoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;->voiceMemoUrl:Ljava/lang/String;

    return-void
.end method
