.class public final Lcom/alipay/pushsdk/data/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/a;->a:Ljava/lang/String;

    const-string/jumbo v0, "mcometgw.alipay.com"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/a;->b:Ljava/lang/String;

    const/16 v0, 0x1bb

    iput v0, p0, Lcom/alipay/pushsdk/data/a;->c:I

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/a;->d:Ljava/lang/String;

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/a;->e:Ljava/lang/String;

    sget v0, Lcom/alipay/pushsdk/c/a;->a:I

    iput v0, p0, Lcom/alipay/pushsdk/data/a;->f:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/pushsdk/data/a;->g:I

    return-void
.end method
