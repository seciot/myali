.class public final Lcom/alipay/pushsdk/c/a/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Z

.field public static i:I

.field public static j:J

.field public static k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "uploadClientTrack"

    sput-object v0, Lcom/alipay/pushsdk/c/a/f;->a:Ljava/lang/String;

    const-string/jumbo v0, "logDetail"

    sput-object v0, Lcom/alipay/pushsdk/c/a/f;->b:Ljava/lang/String;

    const-string/jumbo v0, "userId"

    sput-object v0, Lcom/alipay/pushsdk/c/a/f;->c:Ljava/lang/String;

    const-string/jumbo v0, "imei"

    sput-object v0, Lcom/alipay/pushsdk/c/a/f;->d:Ljava/lang/String;

    const-string/jumbo v0, "deviceId"

    sput-object v0, Lcom/alipay/pushsdk/c/a/f;->e:Ljava/lang/String;

    const-string/jumbo v0, "utdId"

    sput-object v0, Lcom/alipay/pushsdk/c/a/f;->f:Ljava/lang/String;

    const-string/jumbo v0, "appVersion"

    sput-object v0, Lcom/alipay/pushsdk/c/a/f;->g:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/pushsdk/c/a/f;->h:Z

    const/4 v0, 0x0

    sput v0, Lcom/alipay/pushsdk/c/a/f;->i:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/pushsdk/c/a/f;->j:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/c/a/f;->k:Ljava/lang/Object;

    return-void
.end method
