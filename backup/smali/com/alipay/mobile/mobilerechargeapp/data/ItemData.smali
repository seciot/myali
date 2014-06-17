.class public Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->c:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->d:I

    iput-boolean v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->e:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->f:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->g:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->h:Z

    return-void
.end method
