.class final Lcom/alipay/pushsdk/data/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x4

    const-string/jumbo v1, "NotifierInfo"

    const-string/jumbo v2, "Creator.createFromParcel..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/pushsdk/data/NotifierInfo;

    invoke-direct {v0, p1}, Lcom/alipay/pushsdk/data/NotifierInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/alipay/pushsdk/data/NotifierInfo;

    return-object v0
.end method
