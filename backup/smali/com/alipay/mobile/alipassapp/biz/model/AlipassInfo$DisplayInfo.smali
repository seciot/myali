.class public final Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;
.super Ljava/lang/Object;


# instance fields
.field backgroundColor:Ljava/lang/String;

.field exp:Ljava/lang/String;

.field icon:Ljava/lang/String;

.field logo:Ljava/lang/String;

.field strip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getExp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->exp:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public final getResolveBackgroundColor(I)I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->backgroundColor:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->resolveColor(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getStrip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->strip:Ljava/lang/String;

    return-object v0
.end method

.method public final setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->backgroundColor:Ljava/lang/String;

    return-void
.end method

.method public final setExp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->exp:Ljava/lang/String;

    return-void
.end method

.method public final setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->icon:Ljava/lang/String;

    return-void
.end method

.method public final setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->logo:Ljava/lang/String;

    return-void
.end method

.method public final setStrip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->strip:Ljava/lang/String;

    return-void
.end method
