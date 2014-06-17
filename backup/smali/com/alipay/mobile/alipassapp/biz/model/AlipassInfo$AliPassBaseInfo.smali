.class public final Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
.super Ljava/lang/Object;


# static fields
.field public static final CHILDTYPE_MEMBERCARD:Ljava/lang/String; = "memberCard"

.field public static final CHILDTYPE_MFUNDCARD:Ljava/lang/String; = "mFundCard"


# instance fields
.field private childType:Ljava/lang/String;

.field private displayData:Ljava/lang/String;

.field private displayInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

.field private endDate:Ljava/lang/String;

.field private formatVersion:Ljava/lang/String;

.field private gmtModified:Ljava/lang/String;

.field private headData:Ljava/lang/String;

.field private headFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;"
        }
    .end annotation
.end field

.field private isLazyParse:Z

.field private isreaded:I

.field private logoText:Ljava/lang/String;

.field private partnerId:Ljava/lang/String;

.field private passId:Ljava/lang/String;

.field private secondLogoText:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->isLazyParse:Z

    return-void
.end method

.method public constructor <init>(Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;-><init>(Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->isLazyParse:Z

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->passId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->type:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->childType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->childType:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->logoText:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->logoText:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->secondLogoText:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->secondLogoText:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->formatVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->formatVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->status:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->serialNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->serialNumber:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->partnerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->partnerId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->isLazyParse:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->isLazyParse:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->displayInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->displayData:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->headFields:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->headData:Ljava/lang/String;

    :goto_0
    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->gmtModified:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->gmtModified:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->endDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->endDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->endDate:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->isreaded:I

    iput v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->isreaded:I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->displayInfo:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->displayInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    iget-object v0, p1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->headFields:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->headFields:Ljava/util/List;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->endDate:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public final CheckLazyParse()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->isLazyParse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->displayData:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->displayInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->displayData:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->headData:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->headFields:Ljava/util/List;

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->headData:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->isLazyParse:Z

    :cond_0
    return-void
.end method

.method public final getChildType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->childType:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->displayInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->displayInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->displayInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    return-object v0
.end method

.method public final getEndDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormatVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->formatVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getGmtModified()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->gmtModified:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeadFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->headFields:Ljava/util/List;

    return-object v0
.end method

.method public final getIsreaded()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->isreaded:I

    return v0
.end method

.method public final getLogoText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->logoText:Ljava/lang/String;

    return-object v0
.end method

.method public final getPartnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->partnerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->passId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecondLogoText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->secondLogoText:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final setChildType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->childType:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayInfo(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->displayInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    return-void
.end method

.method public final setEndDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->endDate:Ljava/lang/String;

    return-void
.end method

.method public final setFormatVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->formatVersion:Ljava/lang/String;

    return-void
.end method

.method public final setGmtModified(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->gmtModified:Ljava/lang/String;

    return-void
.end method

.method public final setHeadFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->headFields:Ljava/util/List;

    return-void
.end method

.method public final setIsreaded(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->isreaded:I

    return-void
.end method

.method public final setLogoText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->logoText:Ljava/lang/String;

    return-void
.end method

.method public final setPartnerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->partnerId:Ljava/lang/String;

    return-void
.end method

.method public final setPassId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->passId:Ljava/lang/String;

    return-void
.end method

.method public final setSecondLogoText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->secondLogoText:Ljava/lang/String;

    return-void
.end method

.method public final setSerialNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->status:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->type:Ljava/lang/String;

    return-void
.end method
