.class Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;
.super Ljava/lang/Object;


# static fields
.field static final DEFAULT_KEY:Ljava/lang/String; = "rDIwjx1Q"

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x8

    const-string/jumbo v0, "rDIwjx1Q"

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;->a:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;->a:Ljava/lang/String;

    return-object v0
.end method
