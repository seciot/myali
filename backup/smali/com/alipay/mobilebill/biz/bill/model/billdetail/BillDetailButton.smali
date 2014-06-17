.class public Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailButton;
.super Lcom/alipay/mobilebill/common/util/ToString;


# instance fields
.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public buttonName:Ljava/lang/String;

.field public buttonType:Ljava/lang/String;

.field public extInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mdapLogParam:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilebill/common/util/ToString;-><init>()V

    return-void
.end method
