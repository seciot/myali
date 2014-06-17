.class public Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_MSG_KEY:Ljava/lang/String; = "_updateInfo"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/about/a;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/about/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->a:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/mobile/framework/service/ext/about/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->d:Ljava/lang/String;

    iput p5, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->a:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getGuideMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNewestVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->a:I

    return v0
.end method

.method public setDownloadURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setGuideMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setNewestVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setResultStatus(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->a:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
