.class public final Lcom/alipay/mobile/deviceAuthorization/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "paymentPassword"

    sput-object v0, Lcom/alipay/mobile/deviceAuthorization/a;->a:Ljava/lang/String;

    const-string/jumbo v0, "simplePassword"

    sput-object v0, Lcom/alipay/mobile/deviceAuthorization/a;->b:Ljava/lang/String;

    return-void
.end method
