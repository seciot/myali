.class public final Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field addr:Ljava/lang/String;

.field altitude:Ljava/lang/Double;

.field latitude:Ljava/lang/Double;

.field longitude:Ljava/lang/Double;

.field relevantText:Ljava/lang/String;

.field tel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations$1;

    invoke-direct {v0}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->readFormParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFormParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->addr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->altitude:Ljava/lang/Double;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->latitude:Ljava/lang/Double;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->longitude:Ljava/lang/Double;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->relevantText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->tel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAddr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->addr:Ljava/lang/String;

    return-object v0
.end method

.method public final getAltitude()D
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->altitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->latitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->longitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getRelevantText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->relevantText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public final setAddr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->addr:Ljava/lang/String;

    return-void
.end method

.method public final setAltitude(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->altitude:Ljava/lang/Double;

    return-void
.end method

.method public final setLatitude(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->latitude:Ljava/lang/Double;

    return-void
.end method

.method public final setLongitude(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->longitude:Ljava/lang/Double;

    return-void
.end method

.method public final setRelevantText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->relevantText:Ljava/lang/String;

    return-void
.end method

.method public final setTel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->tel:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->addr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->altitude:Ljava/lang/Double;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->latitude:Ljava/lang/Double;

    if-nez v0, :cond_1

    move-wide v0, v2

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->longitude:Ljava/lang/Double;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->relevantText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->tel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->altitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->latitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Locations;->longitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_2
.end method
