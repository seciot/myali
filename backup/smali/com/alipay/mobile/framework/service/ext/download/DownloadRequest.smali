.class public Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private showRunningNotification:Z

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/download/a;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/download/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->downloadUrl:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->title:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->description:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->showRunningNotification:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->appId:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->fileName:Ljava/lang/String;

    .line 115
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/mobile/framework/service/ext/download/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isShowRunningNotification()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->showRunningNotification:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->appId:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->description:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->downloadUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->fileName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setShowRunningNotification(Z)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->showRunningNotification:Z

    .line 93
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->title:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->showRunningNotification:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
