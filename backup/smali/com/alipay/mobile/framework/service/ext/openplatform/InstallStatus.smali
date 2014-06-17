.class public Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;
.super Ljava/lang/Object;
.source "InstallStatus.java"


# static fields
.field public static final STATUS_DEFAULT:I = 0x1

.field public static final STATUS_DOLNLOADING:I = 0x3

.field public static final STATUS_DOLNLOADING_PREPARE:I = 0x2

.field public static final STATUS_DOWNLOAD_FAILD:I = 0x4

.field public static final STATUS_DOWNLOAD_SUCCESS:I = 0x5

.field public static final STATUS_INSTALLING:I = 0x6

.field public static final STATUS_INSTALL_FAILD:I = 0x7

.field public static final STATUS_INSTALL_SUCCESS:I = 0x8


# instance fields
.field private app:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private downLoadProgress:I

.field private status:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->downLoadProgress:I

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->app:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 29
    return-void
.end method


# virtual methods
.method public getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->app:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-object v0
.end method

.method public getDownLoadProgress()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->downLoadProgress:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->status:I

    return v0
.end method

.method public setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->app:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 35
    return-void
.end method

.method public setDownLoadProgress(I)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->downLoadProgress:I

    .line 50
    return-void
.end method

.method public setDownloadProgress(I)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->downLoadProgress:I

    .line 41
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->status:I

    .line 47
    return-void
.end method
