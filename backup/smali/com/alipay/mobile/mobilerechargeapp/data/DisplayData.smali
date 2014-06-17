.class public Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    iput v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->c:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->d:I

    return-void
.end method
