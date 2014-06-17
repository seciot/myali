.class public final Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$FileInfo;
.super Ljava/lang/Object;


# instance fields
.field canShare:Z

.field formatVersion:Ljava/lang/String;

.field serialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFormatVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$FileInfo;->formatVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$FileInfo;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final isCanShare()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$FileInfo;->canShare:Z

    return v0
.end method

.method public final setCanShare(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$FileInfo;->canShare:Z

    return-void
.end method

.method public final setFormatVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$FileInfo;->formatVersion:Ljava/lang/String;

    return-void
.end method

.method public final setSerialNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$FileInfo;->serialNumber:Ljava/lang/String;

    return-void
.end method
