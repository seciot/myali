.class public final Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;
.super Ljava/lang/Object;


# instance fields
.field app:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;

.field icon:Ljava/lang/String;

.field label:Ljava/lang/String;

.field message:Ljava/lang/String;

.field needAuthorize:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->label:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->message:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->needAuthorize:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->icon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getApp()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->app:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;

    return-object v0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getNeedAuthorize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->needAuthorize:Z

    return v0
.end method

.method public final setApp(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->app:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$App;

    return-void
.end method

.method public final setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->icon:Ljava/lang/String;

    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->label:Ljava/lang/String;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->message:Ljava/lang/String;

    return-void
.end method

.method public final setNeedAuthorize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->needAuthorize:Z

    return-void
.end method
