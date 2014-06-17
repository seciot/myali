.class public Lcom/alipay/mobile/longlink/service/q;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/longlink/service/q;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/longlink/service/q;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/longlink/service/q;->b:I

    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/longlink/service/q;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 4

    sget v0, Lcom/alipay/mobile/longlink/service/q;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/longlink/service/q;->b:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/longlink/service/q;->c:I

    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/longlink/service/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "waiting seconds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/longlink/service/q;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mCtrlCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/longlink/service/q;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/alipay/mobile/longlink/service/q;->c:I

    return v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/longlink/service/q;->b:I

    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/longlink/service/q;->c:I

    return-void
.end method
