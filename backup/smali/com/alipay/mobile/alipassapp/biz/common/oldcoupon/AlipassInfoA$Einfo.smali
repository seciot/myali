.class public final Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;
.super Ljava/lang/Object;


# instance fields
.field barcodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Barcode;",
            ">;"
        }
    .end annotation
.end field

.field discountInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBarcodeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Barcode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;->barcodeList:Ljava/util/List;

    return-object v0
.end method

.method public final getDiscountInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;->discountInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final setBarcodeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Barcode;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;->barcodeList:Ljava/util/List;

    return-void
.end method

.method public final setDiscountInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;->discountInfo:Ljava/lang/String;

    return-void
.end method
