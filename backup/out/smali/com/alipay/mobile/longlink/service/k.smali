.class public final Lcom/alipay/mobile/longlink/service/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "mobilepmgw.alipay.com"

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/k;->a:Ljava/lang/String;

    const/16 v0, 0x1bb

    iput v0, p0, Lcom/alipay/mobile/longlink/service/k;->b:I

    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/longlink/service/k;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/k;->a:Ljava/lang/String;

    iput p2, p0, Lcom/alipay/mobile/longlink/service/k;->b:I

    iput-object p3, p0, Lcom/alipay/mobile/longlink/service/k;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/longlink/service/k;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/k;->c:Ljava/lang/String;

    return-object v0
.end method
