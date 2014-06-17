.class public Lcom/alipay/mobile/logmonitor/util/LogMonitorConstans;
.super Ljava/lang/Object;


# static fields
.field public static final FILE_MAXSIZE:J = 0x100000L

.field public static final FRESH_ROWCOUNT:J = 0xaL

.field public static final GLOBAL_LOCK:Ljava/lang/Object; = null

.field public static final LOG_PATH:Ljava/lang/String; = "logmonitor"

.field public static final ROW_SPLIT:Ljava/lang/String; = "\\^\\&\\^\\#\\$"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/LogMonitorConstans;->GLOBAL_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
