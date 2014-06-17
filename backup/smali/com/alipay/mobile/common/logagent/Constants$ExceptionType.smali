.class public final enum Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum TYPE_CONNECTERR:Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;

.field public static final enum TYPE_EXCEPTION:Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;

.field private static final synthetic b:[Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;

    const-string/jumbo v1, "TYPE_CONNECTERR"

    const-string/jumbo v2, "MonitorPoint_ConnectErr"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;->TYPE_CONNECTERR:Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;

    new-instance v0, Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;

    const-string/jumbo v1, "TYPE_EXCEPTION"

    const-string/jumbo v2, "MonitorPoint_Exception"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;->TYPE_EXCEPTION:Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;

    sget-object v1, Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;->TYPE_CONNECTERR:Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;->TYPE_EXCEPTION:Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;->b:[Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;
    .locals 1

    const-class v0, Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;->b:[Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/logagent/Constants$ExceptionType;->a:Ljava/lang/String;

    return-object v0
.end method
