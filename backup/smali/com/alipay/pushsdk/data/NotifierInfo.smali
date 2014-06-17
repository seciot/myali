.class public Lcom/alipay/pushsdk/data/NotifierInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/pushsdk/data/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/pushsdk/data/d;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/d;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/data/NotifierInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    new-instance v0, Lcom/alipay/pushsdk/data/b;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Lcom/alipay/pushsdk/data/b;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    new-instance v0, Lcom/alipay/pushsdk/data/b;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Lcom/alipay/pushsdk/data/b;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    new-instance v0, Lcom/alipay/pushsdk/data/b;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Lcom/alipay/pushsdk/data/b;

    const/4 v0, 0x4

    const-string/jumbo v1, "NotifierInfo"

    const-string/jumbo v2, "NotifierInfo.Parcel..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Lcom/alipay/pushsdk/data/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Lcom/alipay/pushsdk/data/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Lcom/alipay/pushsdk/data/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Lcom/alipay/pushsdk/data/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/b;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/alipay/pushsdk/data/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Lcom/alipay/pushsdk/data/b;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public final g()Lcom/alipay/pushsdk/data/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Lcom/alipay/pushsdk/data/b;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "msgId"

    iget-object v2, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Lcom/alipay/pushsdk/data/b;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/data/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "msgTitle"

    iget-object v2, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x4

    const-string/jumbo v0, "NotifierInfo"

    const-string/jumbo v1, "NotifierInfo.writeToParcel..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string/jumbo v0, "NotifierInfo"

    const-string/jumbo v1, "NotifierInfo.writeToParcel msgInfo."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Lcom/alipay/pushsdk/data/b;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Lcom/alipay/pushsdk/data/b;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Lcom/alipay/pushsdk/data/b;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/data/NotifierInfo;->h:Lcom/alipay/pushsdk/data/b;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
