.class public Lcom/alipay/pushsdk/push/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/p;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/p;->a:Ljava/lang/String;

    const/16 v0, 0xf

    sput v0, Lcom/alipay/pushsdk/push/p;->b:I

    const/4 v0, -0x1

    sput v0, Lcom/alipay/pushsdk/push/p;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/alipay/pushsdk/push/p;->c:I

    return v0
.end method

.method public static b()I
    .locals 4

    const/16 v1, 0x12c

    const/4 v3, 0x3

    sget v0, Lcom/alipay/pushsdk/push/p;->c:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/alipay/pushsdk/push/p;->b:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/alipay/pushsdk/push/p;->b:I

    :goto_0
    sget v0, Lcom/alipay/pushsdk/push/p;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/pushsdk/push/p;->c:I

    sget v0, Lcom/alipay/pushsdk/push/p;->b:I

    if-lt v0, v1, :cond_0

    sput v1, Lcom/alipay/pushsdk/push/p;->b:I

    :cond_0
    sget-object v0, Lcom/alipay/pushsdk/push/p;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "waiting seconds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alipay/pushsdk/push/p;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/alipay/pushsdk/push/p;->b:I

    return v0

    :pswitch_0
    sput v3, Lcom/alipay/pushsdk/push/p;->b:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xf

    sput v0, Lcom/alipay/pushsdk/push/p;->b:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static c()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/alipay/pushsdk/push/p;->c:I

    const/4 v0, 0x3

    sput v0, Lcom/alipay/pushsdk/push/p;->b:I

    return-void
.end method
